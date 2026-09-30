import assert from "node:assert/strict";
import { test } from "node:test";
import * as c from "../js-out/calcit.core.mjs";
import { store, Op, decode_store } from "../js-out/app.schema.mjs";
import { updater } from "../js-out/app.updater.mjs";
import { comp_container, comp_mono, comp_title } from "../js-out/app.comp.container.mjs";
import { RespoEvent } from "../js-out/respo.schema.mjs";
import { component_$q_, component_tree } from "../js-out/respo.util.detect.mjs";
import { make_string } from "../js-out/respo.render.html.mjs";
import { reel } from "../js-out/reel.schema.mjs";
const t = c.init_tags(["states", "editor", "data", "drafts", "id", "text", "touch-id", "mono?", "version", "pointer", "store", "base", "event", "children", "input", "click", "value"]);
const map = c._$n__$M_;
const get = (value, key) => c.option_$o_unwrap(c.get(value, key));
const op = (tag, ...payload) => c._PCT__$o__$o_(Op, c.init_tags([tag])[tag], ...payload);
const newReel = (db) => c.assoc(c.assoc(reel, t.store, db), t.base, db);
const draftAt = (db, id) => get(get(db, t.drafts), id);
function handlers(node, kind, found = []) {
  if (component_$q_(node)) return handlers(c.option_$o_unwrap(component_tree(node)), kind, found);
  if (c.list_$q_(node)) {
    for (const item of node.toArray()) handlers(item, kind, found);
    return found;
  }
  const events = c.get(node, t.event);
  if (c.option_$o_some_$q_(events)) {
    const handler = c.get(c.option_$o_unwrap(events), kind);
    if (c.option_$o_some_$q_(handler)) found.push(c.option_$o_unwrap(handler));
  }
  const children = c.get(node, t.children);
  if (c.option_$o_some_$q_(children)) {
    for (const pair of c.option_$o_unwrap(children).toArray()) handlers(c.option_$o_unwrap(c.nth(pair, 1)), kind, found);
  }
  return found;
}
test("initial and edited Store Structs render without being decoded as Maps", () => {
  assert.ok(make_string(comp_container(newReel(store))).includes("new..."));
  const edited = updater(store, op("text", "First note\nsecond line"), "next", 100);
  const html = make_string(comp_container(newReel(edited)));
  assert.ok(html.includes("First note"));
  assert.ok(html.includes("second line"));
});
test("actual textarea callback reads a published RespoEvent and dispatches one Enum", () => {
  let db = store;
  const event = c._$n__PCT__$M_(RespoEvent, ...RespoEvent.fields.flatMap((field) => [field, field.value === "value" ? "typed input" : field.value === "type" ? t.input : null]));
  const inputs = handlers(comp_container(newReel(db)), t.input);
  assert.equal(inputs.length, 1);
  inputs[0](event, (...args) => {
    assert.equal(args.length, 1);
    db = updater(db, args[0], "new-empty", 100);
  });
  assert.equal(get(draftAt(db, "zero"), t.text), "typed input");
  assert.equal(get(draftAt(db, "zero"), t["touch-id"]), 100);
  assert.equal(get(draftAt(db, "new-empty"), t.text), "");
});
test("draft editing keeps exactly one empty draft without discarding active text", () => {
  let db = updater(store, op("text", "kept note"), "empty-1", 100);
  db = updater(db, op("pointer", "empty-1"), "unused", 200);
  db = updater(db, op("text", "second note"), "empty-2", 300);
  assert.equal(c.count(get(db, t.drafts)), 3);
  db = updater(db, op("text", ""), "unused", 400);
  assert.equal(c.count(get(db, t.drafts)), 2);
  assert.equal(get(draftAt(db, "zero"), t.text), "kept note");
  assert.equal(get(draftAt(db, "empty-1"), t.text), "");
  assert.equal(c.option_$o_some_$q_(c.get(get(db, t.drafts), "empty-2")), false);
});
test("actual mono callback toggles the current draft through a single Enum", () => {
  let db = store;
  const clicks = handlers(comp_mono(false), t.click);
  assert.equal(clicks.length, 1);
  clicks[0](null, (...args) => { assert.equal(args.length, 1); db = updater(db, args[0], "fixture", 100); });
  assert.equal(get(draftAt(db, "zero"), t["mono?"]), true);
  assert.ok(make_string(comp_container(newReel(db))).includes('spellcheck="false"'));
});
test("titles retain first-line and private-title behavior", () => {
  const draft = c.assoc(draftAt(store, "zero"), t.text, "Title\nbody");
  assert.ok(make_string(comp_title(draft, 0, "zero")).includes("Title"));
  assert.ok(make_string(comp_title(c.assoc(draft, t.text, "\nprivate body"), 0, "zero")).includes("&lt;private&gt;"));
});
test("whole-store nested state update keeps notes, pointer and version intact", () => {
  const edited = updater(store, op("text", "saved note"), "empty", 100);
  const next = updater(edited, op("states", c._$L_(t.editor), "UI draft"), "fixture", 200);
  assert.ok(c._$e_(get(next, t.drafts), get(edited, t.drafts)));
  assert.equal(get(next, t.pointer), get(edited, t.pointer));
  assert.equal(get(next, t.version), get(edited, t.version));
  assert.equal(get(get(get(next, t.states), t.editor), t.data), "UI draft");
});
function legacyStore() {
  return map(t.states, map(), t.drafts, map("saved", map(t.id, "saved", t.text, "historical note", t["touch-id"], 42, t["mono?"], true)), t.pointer, "saved", t.version, "legacy");
}
test("legacy Map notes decode into a typed Store and hydrate without data loss", () => {
  const restored = decode_store(c.parse_cirru_edn(c.format_cirru_edn(legacyStore())));
  const next = updater(store, op("hydrate-storage", restored), "fixture", 0);
  assert.equal(get(draftAt(next, "saved"), t.text), "historical note");
  assert.equal(get(draftAt(next, "saved"), t["mono?"]), true);
  assert.equal(get(next, t.version), "legacy");
  assert.ok(make_string(comp_container(newReel(next))).includes("historical note"));
});
test("new saved Store and nested Draft Structs round-trip through the external decoder", () => {
  const edited = updater(store, op("text", "round trip"), "empty", 100);
  const restored = decode_store(c.parse_cirru_edn(c.format_cirru_edn(edited)));
  assert.ok(c._$e_(restored, edited));
});
test("external decoder rejects missing fields, wrong state/key types and malformed nested notes", () => {
  assert.throws(() => decode_store(map()));
  assert.throws(() => decode_store(c.assoc(legacyStore(), t.states, "not states")));
  assert.throws(() => decode_store(c.assoc(legacyStore(), t.pointer, 1)));
  const draft = get(get(legacyStore(), t.drafts), "saved");
  for (const [key, bad] of [[t.id, 1], [t.text, false], [t["touch-id"], "wrong"], [t["mono?"], "wrong"]]) {
    assert.throws(() => decode_store(c.assoc(legacyStore(), t.drafts, map("saved", c.assoc(draft, key, bad)))));
  }
  assert.throws(() => decode_store(c.assoc(legacyStore(), t.drafts, map(1, draft))));
  assert.throws(() => decode_store(c.assoc(legacyStore(), t.drafts, map("saved", c.dissoc(draft, t.text)))));
});

import assert from "node:assert/strict";
import { test } from "node:test";
import { registerHooks } from "node:module";
import * as c from "../js-out/calcit.core.mjs";
import { decode_store, Op } from "../js-out/app.schema.mjs";
const descriptor = Object.getOwnPropertyDescriptor(globalThis, "document");
const element = { fixture: "actual mount target" };
Object.defineProperty(globalThis, "document", { configurable: true, value: {
  querySelector(selector) { assert.equal(selector, ".app"); return element; },
  createElement(tag) {
    assert.equal(tag, "canvas");
    return { getContext(kind) { assert.equal(kind, "2d"); return { measureText(text) { return { width: text.length * 8 }; } }; } };
  },
} });
const hooks = registerHooks({ resolve(specifier, context, nextResolve) {
  return nextResolve(specifier === "virtual-dom/create-element" ? "virtual-dom/create-element.js" : specifier, context);
} });
let main;
try { main = await import("../js-out/app.main.mjs"); }
finally {
  hooks.deregister();
  if (descriptor) Object.defineProperty(globalThis, "document", descriptor);
  else delete globalThis.document;
}
test("main selects the actual host element rather than a List", () => assert.equal(main.mount_target, element));
test("actual dispatch and persistence preserve the manuscript key and edited typed Store", () => {
  const previousWindow = globalThis.window;
  const storageDescriptor = Object.getOwnPropertyDescriptor(globalThis, "localStorage");
  const writes = [];
  try {
    const storage = { setItem(key, value) { writes.push([key, value]); } };
    globalThis.window = { localStorage: storage };
    Object.defineProperty(globalThis, "localStorage", { configurable: true, value: storage });
    const t = c.init_tags(["text", "drafts", "zero", "store"]);
    main.dispatch_$x_(c._PCT__$o__$o_(Op, t.text, "persisted note"));
    main.persist_storage_$x_();
    assert.equal(writes.length, 1);
    assert.equal(writes[0][0], "manuscript");
    const saved = decode_store(c.parse_cirru_edn(writes[0][1]));
    assert.ok(c._$e_(saved, c.option_$o_unwrap(c.get(c.deref(main._$s_reel), t.store))));
    const drafts = c.option_$o_unwrap(c.get(saved, t.drafts));
    assert.equal(c.option_$o_unwrap(c.get(c.option_$o_unwrap(c.get(drafts, "zero")), t.text)), "persisted note");
  } finally {
    globalThis.window = previousWindow;
    if (storageDescriptor) Object.defineProperty(globalThis, "localStorage", storageDescriptor);
    else delete globalThis.localStorage;
  }
});

import assert from "node:assert/strict";
import { test } from "node:test";
import { checkCdnPath } from "./check-cdn-path.mjs";
const base = "https://cos-sh.tiye.me/Memkits/manuscript/pr/";
const html = `<script src="${base}assets/main.js"></script><link href="${base}assets/main.css" rel="stylesheet"><link href="http://cdn.tiye.me/favored-fonts/main-fonts.css" rel="stylesheet">`;
test("frontend scripts/styles use the PR base and existing shared font URL stays unchanged", () => checkCdnPath(html, base));
test("relative and production paths cannot leak into a PR build", () => {
  assert.throws(() => checkCdnPath(html.replace(`${base}assets/main.js`, "./assets/main.js"), base));
  assert.throws(() => checkCdnPath(html.replace(`${base}assets/main.css`, "https://cos-sh.tiye.me/Memkits/manuscript/assets/main.css"), base));
});
test("unknown external assets and duplicated path separators fail", () => {
  assert.throws(() => checkCdnPath(`${html}<script src="https://unexpected.example/app.js"></script>`, base));
  assert.throws(() => checkCdnPath(html.replace("assets/main.css", "assets//main.css"), base));
});
test("commented entries and missing generated stylesheets fail", () => {
  assert.throws(() => checkCdnPath(`<!--${html}-->`, base));
  assert.throws(() => checkCdnPath(`<script src="${base}assets/main.js"></script>`, base));
});

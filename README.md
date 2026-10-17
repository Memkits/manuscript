
Manuscript
------

> Dead-simple text note app.

Demo: http://repo.memkits.org/manuscript/

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

Use paired Calcit/procs 0.30.1-alpha.4 (compiler prerelease), `caps --ci --strict`, and
`yarn install --immutable`. Build with `yarn build`, then run
`node --test tests/*.test.mjs`. Public upload verification uses cos-upload-action's
built-in verify settings, with no extra CDN checker.
Canonical files are `calcit.cirru` and `deps.cirru`; retired `compact.cirru`
and `package.cirru` are ignored and rejected by CI. Original server deployment
paths and the `manuscript` local-storage key are preserved.

Respo 0.16.122、UI 0.7.41、Reel 0.6.39、js-ffi 0.2.3 均使用正式精确 tag。
升级后刷新已打开页面。Reel 使用真实 `State<Op,Store>`，业务操作/存档在真实边界检查；
旧 Map 与嵌套 Draft Struct 存档仍可读取，笔记排序、唯一空草稿、私密标题和 Mono 行为不变。
未知或 payload 不合法的业务操作会明确拒绝，不再以错误类型继续进入历史记录。
这不是授权合并、发版或生产部署。

CI 使用正式 COS action v1.2.0 内置 HTML 同域资源引用及公开内容校验；PR 按 PR/run/attempt 隔离，同组串行保留等待队列。工具链一致性、规范格式、全部定义、完整 strict 和六个业务 namespace 公开定义检查保留，原十一项真实笔记/持久化测试保留；仅适配正式 ChildPair/typed Reel/Storage fixture，并在原持久化测试内覆盖恢复派发、Recall/Run，不增加测试脚本或 npm 依赖。未使用的旧数量基线删除，不用预算替代语义检查。

执行 `caps deps.cirru verify --toolchain`、`calcit --check-only --all-defs` 和
`calcit fix --workflow strict --verify` 验收配对与源码。测试使用合成笔记，不读取生产内容。
Actions 改为对应的精确正式 tag，接受 tag 可移动的既定取舍；CI job/COS 分别限时 15/10 分钟。

`yarn dev` 编译一次再启动 Vite，实时修改 Calcit 时另开终端运行 `calcit calcit.cirru js -w`，无需 concurrently。模块优先兼容正式版本，不新增 hash，不为去掉 alpha 而降回不兼容版本。

### License

MIT

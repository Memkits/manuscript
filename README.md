
Manuscript
------

> Dead-simple text note app.

Demo: http://repo.memkits.org/manuscript/

### 使用者需要注意

开发工具链要求正式 Calcit CLI / `@calcit/procs` **0.42.1**，请重新安装完整模块图、生成 JS 并刷新。
正式模块为 Reel 0.11.0、UI 0.15.2、Respo 0.19.5、JS FFI 0.2.13 和 Router 0.12.2。
Vite 8.3.3 和其他 npm 依赖保持原值，lock 配对新 runtime，安装隔离期为一小时。

便笺排序、唯一空草稿、私密标题、Mono、旧 Map/嵌套 Draft 存档及 `manuscript` 存储 key 保持。
草稿清理按键删除多余空草稿，过程中保留 `Map String Draft` 类型。
文本框和点击回调使用 RespoEvent，组件状态路径用 CoordKey 校验。内部派发通过 `Op | reel.typed/Control` 区分编辑操作与回放。面板和快捷键通过显式回调发送具体 `Control`。

启动先恢复存档再注册自动保存，解析或解码失败时保留原值。`hud!` 在页面显示热更新状态和错误。

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

Use paired formal Calcit/procs 0.42.1, `caps --ci --strict`, and
`yarn install --immutable`. Build with `yarn build`, then run
`node --test tests/*.test.mjs`. Public upload verification uses cos-upload-action's
built-in verify settings, with no extra CDN checker.
Canonical files are `calcit.cirru` and `deps.cirru`; retired `compact.cirru`
and `package.cirru` are ignored and rejected by CI. Original server deployment
paths and the `manuscript` local-storage key are preserved.

CI 使用正式 COS action v1.3.0 内置 HTML 同域资源引用及公开内容校验；PR 按 PR/run/attempt 隔离，同组串行保留等待队列。
工具链一致性、规范格式、全部定义、完整 strict 和六个业务 namespace 公开定义检查，以及原十一项笔记/持久化测试均保留。
不增加测试脚本、npm 依赖、强转或质量预算，原工作流不改。

执行 `caps deps.cirru verify --toolchain`、`calcit --check-only --all-defs` 和
`calcit fix --workflow strict --verify` 验收配对与源码。测试使用合成笔记，不读取生产内容。
Actions 改为对应的精确正式 tag，接受 tag 可移动的既定取舍；CI job/COS 分别限时 15/10 分钟。

`yarn dev` 编译一次再启动 Vite，实时修改 Calcit 时另开终端运行 `calcit calcit.cirru js -w`，无需 concurrently。模块优先兼容正式版本，不新增 hash，不为去掉 alpha 而降回不兼容版本。

### License

MIT


Manuscript
------

> Dead-simple text note app.

Demo: http://repo.memkits.org/manuscript/

### 使用者需要注意

开发工具链要求正式 Calcit CLI / `@calcit/procs` **0.31.0**，请重新安装完整模块图、生成 JS 并刷新。
模块固定为已发布的 Reel 0.7.0-alpha.2、UI 0.9.0-alpha.2、Respo 0.17.0-alpha.2、js-ffi 0.2.5，
传递 Router 0.9.0-alpha.1；这些模块仍在 0.31 预发布维护线，不能与旧 0.30.1 图混装。
Vite 8.3.3 和其他 npm 依赖保持原值，lock 配对新 runtime，安装隔离期为一小时。

便笺排序、唯一空草稿、私密标题、Mono、旧 Map/嵌套 Draft 存档及 `manuscript` 存储 key 保持。
两处管道中的旧 `vals` 改为 `distinct-values`，结果仍是原先的去重 Set，不改成保留重复值的 List。
多空草稿清理保留原 `dissoc` 参数展开和零 key 异常，只在其开放返回值进入 drafts 字段前检查 Map 类型。
当前方法 spread 的限制与运行差异已向上游报告：[Calcit #2428](https://github.com/calcit-lang/calcit/issues/2428)。

入口绑定既有 Op（包含业务和 Reel controls），renderer 回调转发给原受检 dispatch；
不改操作协议、存档恢复或保存顺序。启动仍先恢复成功再注册自动保存，解析/解码失败时原值不会被默认状态覆盖。
`hud!` 仍在页面显示热更新状态和错误。UI 依赖升级可能影响样式，不承诺逐像素一致。
本迁移不合并或部署应用。

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

Use paired formal Calcit/procs 0.31.0, `caps --ci --strict`, and
`yarn install --immutable`. Build with `yarn build`, then run
`node --test tests/*.test.mjs`. Public upload verification uses cos-upload-action's
built-in verify settings, with no extra CDN checker.
Canonical files are `calcit.cirru` and `deps.cirru`; retired `compact.cirru`
and `package.cirru` are ignored and rejected by CI. Original server deployment
paths and the `manuscript` local-storage key are preserved.

CI 使用正式 COS action v1.2.0 内置 HTML 同域资源引用及公开内容校验；PR 按 PR/run/attempt 隔离，同组串行保留等待队列。
工具链一致性、规范格式、全部定义、完整 strict 和六个业务 namespace 公开定义检查，以及原十一项笔记/持久化测试均保留。
不增加测试脚本、npm 依赖、强转或质量预算，原工作流不改。

执行 `caps deps.cirru verify --toolchain`、`calcit --check-only --all-defs` 和
`calcit fix --workflow strict --verify` 验收配对与源码。测试使用合成笔记，不读取生产内容。
Actions 改为对应的精确正式 tag，接受 tag 可移动的既定取舍；CI job/COS 分别限时 15/10 分钟。

`yarn dev` 编译一次再启动 Vite，实时修改 Calcit 时另开终端运行 `calcit calcit.cirru js -w`，无需 concurrently。模块优先兼容正式版本，不新增 hash，不为去掉 alpha 而降回不兼容版本。

### License

MIT

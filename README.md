
Manuscript
------

> Dead-simple text note app.

Demo: http://repo.memkits.org/manuscript/

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

Use paired formal Calcit/procs 0.30.1, `caps --ci --strict`, and
`yarn install --immutable`. Build with `yarn build`, then run
`node --test tests/*.test.mjs`. Public upload verification uses cos-upload-action's
built-in verify settings, with no extra CDN checker.
Canonical files are `calcit.cirru` and `deps.cirru`; retired `compact.cirru`
and `package.cirru` are ignored and rejected by CI. Original server deployment
paths and the `manuscript` local-storage key are preserved.

使用者影响：继续正式 Calcit CLI / procs 0.30.1，Respo 0.16.126、UI 0.8.1、Reel 0.6.42、js-ffi 0.2.6 均使用正式精确 tag，传递 Router 0.8.38。重新安装完整模块图、生成 JS 并刷新页面，不混装旧 alpha 缓存；Vite 8.3.3、npm 版本和 lock 不变。
Map/Set 数量改用当前首选 `.len`，Option 旧入口改为方法，单参数 merge 恒等包装删除。默认值、求值次数及便笺算法不变。
三个现有 DOM 回调和 event-value 使用真实 Map 事件合同，dispatch 仍是开放 Fn<Dynamic,Unit,rest Dynamic>，不伪装成封闭 Op；String 检查保留。
CSS 静态长度/关键字按原渲染规则改为等价 String，动态尺寸表达式保持，不改尺寸/颜色/布局。
删除旧 procs 0.27.0 的 npm 预批准例外，按普通正式包安装策略验证，不新增例外或永久验证脚本。
启动先恢复存档，再渲染及注册自动保存；存档解析或解码失败时不会注册保存回调，
避免原值被初始笔记覆盖。遇错应先备份并修复存档，不要清空浏览器数据。
原 JS `hud!` 热重载错误提示保留，不用 `raise` 替代页面提示。
Reel 使用真实 `State<Op,Store>`，业务操作/存档在真实边界检查；
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

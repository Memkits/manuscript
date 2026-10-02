
Manuscript
------

> Dead-simple text note app.

Demo: http://repo.memkits.org/manuscript/

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

Use stable Calcit/procs 0.27.0, `caps --ci --strict`, and
`yarn install --immutable`. Build with `yarn build`, then run
`node --test tests/*.test.mjs`. Public upload verification uses cos-upload-action's
built-in verify settings, with no extra CDN checker.
Canonical files are `calcit.cirru` and `deps.cirru`; retired `compact.cirru`
and `package.cirru` are ignored and rejected by CI. Original server deployment
paths and the `manuscript` local-storage key are preserved.

CI 使用正式 COS action v1.2.0 内置 HTML 同域资源引用及公开内容校验；PR 按 PR/run/attempt 隔离，同组串行保留等待队列。工具链一致性、规范格式、严格入口和六个业务 namespace 公开定义检查保留，全部十一项真实笔记/持久化测试不变，不增加项目验证脚本或 npm 依赖。

`yarn dev` 编译一次再启动 Vite，实时修改 Calcit 时另开终端运行 `calcit calcit.cirru js -w`，无需 concurrently。模块优先兼容正式版本，不新增 hash，不为去掉 alpha 而降回不兼容版本。

### License

MIT

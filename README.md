
Manuscript
------

> Dead-simple text note app.

Demo: http://repo.memkits.org/manuscript/

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

Use stable Calcit/procs 0.27.0, `caps --ci --strict`, and
`yarn install --immutable`. Build with `yarn build`, then run
`node --test tests/*.test.mjs`. CI checks generated frontend HTML against
the selected CDN base; cos-upload-action performs public upload verification.
Canonical files are `calcit.cirru` and `deps.cirru`; retired `compact.cirru`
and `package.cirru` are ignored and rejected by CI. Original server deployment
paths and the `manuscript` local-storage key are preserved.

### License

MIT

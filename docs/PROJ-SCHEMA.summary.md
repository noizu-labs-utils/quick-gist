# Project Schema — Summary

No relational store. Data shapes: configuration (flags/env), the `gh` command interface, transient per-run artifacts, and the doc-pointer store.

**Env vars:** `QUICK_GIST_VISIBILITY` (secret|public, default secret) · `QUICK_GIST_ACCOUNT` · `QUICK_GIST_HOST` (default github.com) · `QUICK_GIST_CHUNK_SIZE` (`^[0-9]+[KMG]?$`, default 8M); inherited `GH_TOKEN`/`GITHUB_TOKEN` tried first for identity, stale tokens fall back to stored accounts.

**Precedence:** flags > env var > hardcoded default (visibility, host, chunk size); account: `--account`/`-u` > `QUICK_GIST_ACCOUNT` > valid env token > sole stored account > interactive pick.

**`gh` interface:** `auth status` (parse `account <login>`), `auth token --hostname --user`, `api user --jq .login` (verify), `gist create --desc [--public] FILE` (URL extracted from stdout), `gist edit ID --add FILE` (ID or URL), `gist list --limit 20`, `gist view --web` (best-effort). URL: `gist.github.com/<id>` or `https://<host>/gist/<id>`.

**Filters:** bash globs (repeatable), matched on path or basename; `-x EXT` = `*.EXT`; explicit files bypass filters.

**Artifacts:** temp dir `quick-gist.XXXXXX` (trap-cleaned) holding NUL-separated picker lists, stdin spool, `<stem>.part-NNN<ext>` chunk parts, and `*.err` spools.

**Stores:** `.meta/pointers.yaml` (UUID-keyed pointer records, CLI-managed) · remote gist = flat filename→text map (no duplicate basenames).

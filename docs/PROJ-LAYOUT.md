# Project Layout

<!-- 〚📁:48ad11d7-ed75-5601-8167-871754780a06〛 quick-gist PROJ-LAYOUT :: Repository structure map and key-file descriptions. -->

```
quick-gist/
├── quick-gist                  # CLI script (bash) — main executable, single-file tool
├── Makefile                    # test runner + install → ~/.local/bin
├── tests/
│   └── run.sh                 # Mocked end-to-end CLI regression suite
├── LICENSE.md                  # MIT license
├── README.md                   # Usage guide, options reference, install instructions
├── CHANGELOG.md                # Dated work log, newest first
├── .gitignore                  # Editor swap files, .env, .envrc.local, .DS_Store
├── .meta/
│   └── pointers.yaml           # Doc-pointer store (managed by `doc-pointers` CLI; do not hand-edit)
└── docs/                       # Project documentation
    ├── PROJ-ARCH.md            # Architecture overview
    ├── PROJ-ARCH.summary.md    # Architecture companion summary
    ├── PROJ-LAYOUT.md          # This file — project structure map
    ├── PROJ-LAYOUT.summary.md  # Companion tree summary
    ├── PROJ-SCHEMA.md          # Data/config/interface schemas (no relational store)
    ├── PROJ-SCHEMA.summary.md  # Schema companion summary
    ├── PROJ-FAQ.md             # Motivation and design FAQ
    ├── PROJ-FAQ.summary.md     # FAQ companion summary
    ├── PROJ-HOWTO.md           # Task-oriented how-to guides
    ├── PROJ-HOWTO.summary.md   # HOWTO companion summary
    ├── THREAT-MODEL.md         # Security threat model
    ├── THREAT-MODEL.summary.md # Threat-model companion summary
    └── howto/
        └── large-files-and-chunking.md  # Deep dive: incremental upload + chunk splitting
```

## Key Files

| File | Purpose |
|------|---------|
| `quick-gist` | Self-contained bash CLI with account selection, filtered fzf integration, incremental uploads, and explicit results |
| `tests/run.sh` | Dependency-free regression harness with mocked `gh` and `fzf` commands |
| `Makefile` | `make test` runs the regression suite; `make install` copies the script to `~/.local/bin` |
| `README.md` | Install, usage, flags, and `QUICK_GIST_*` environment variable docs |
| `CHANGELOG.md` | Dated work log; one line per landed change, newest first |
| `.meta/pointers.yaml` | Durable doc-pointer identities for the documentation loci; written by `doc-pointers build --write`, never by hand |

## Notes

- No runtime `bin/` or `lib/` subfolders — runtime behavior remains in the single `quick-gist` script.
- Requires authenticated `gh`; `fzf` and `rg` improve interactive picking, while `find` is the discovery fallback.
- The repository is standalone (`github.com/noizu-labs-utils/quick-gist`) and also registered in the Noizu monorepo's `Projects/` submodule layer as `Projects/quick-gist-utils`.

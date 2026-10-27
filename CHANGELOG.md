# Changelog — Portfolio/Utilities/source/quick-gist

## 2026-10-27
- Doc sweep: PROJ-LAYOUT/PROJ-ARCH refreshed (standalone-repo location, full docs tree); PROJ-SCHEMA + THREAT-MODEL authored with summaries
- Doc sweep: minted doc-pointer anchors (full-UUID 📁 file markers) for README, PROJ-ARCH/LAYOUT/FAQ/HOWTO, and the large-files how-to; store at `.meta/pointers.yaml`

## 2026-10-26
- PR #1 merged (regular develop→main): Utilities-era working-copy docs twin-landing reconciled — doc path references aligned to `Portfolio/Utilities/source/quick-gist`
- PR #1 review fixes (gemini-code-assist): base-10 forced in `parse_size` and interactive account selection (`10#`) so leading-zero sizes/answers no longer trip octal parsing
- PR #1 review fixes (gemini-code-assist): `is_binary` detection pattern `.` → `^` so text files containing only newlines are no longer misclassified as binary

## [Unreleased]
- No committed changes since last milestone (working tree has uncommitted script/doc updates not yet reflected here)

## [m1-initial-release] — 2026-07-16 — tag: `utilities-shell-quick-gist/m1-initial-release`
Milestone summary: `quick-gist` lands as a fast, ergonomic CLI wrapper around `gh gist` with interactive file picking via fzf, then gets its PROJ-ARCH/PROJ-LAYOUT docs aligned to the per-level docs convention.

### Added
- Initial `quick-gist` script: fzf-driven interactive file picker (multi-select, preview), stdin piping, add-to-existing-gist, public/secret visibility (flag or env var), auto-copy gist URL to clipboard, optional post-create browser open
- Makefile, LICENSE.md, README.md, PROJ-ARCH.md, PROJ-LAYOUT.md (+ summaries)
### Changed
- PROJ-ARCH.md / PROJ-LAYOUT.md (+ summaries) revised to match the per-level docs convention

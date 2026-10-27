# Threat Model — Summary

Local CLI, no service surface. Assets: `gh` keyring tokens, uploaded file content, account identity. Dominant risk: information disclosure of uploaded content.

**Boundaries:** process ↔ keyring (token read) · process ↔ child `gh` (process-local `GH_TOKEN` export) · `gh` ↔ GitHub (HTTPS) · GitHub ↔ internet (secret gists readable by anyone with the URL).

**Register:** T-001 High, info disclosure — secret gists are unlisted not private (Accepted) · T-002 Medium, info disclosure — no content scanning before publish (Open/accepted residual) · T-003 Medium, spoofing — stale env token (Mitigated: `gh api user` verify + printed account) · T-004 Low, info disclosure — token in process env (Mitigated by scope) · T-005 Medium, tampering/DoS — partial gist on mid-upload failure (Mitigated: per-file edits + reported URL) · T-006 Low, EoP — trusted PATH binaries (Accepted).

**Coverage:** 3 mitigated · 2 accepted · 1 open (T-002, product-scope decision).

**Residual risk:** confidentiality bounded by GitHub's unlisted semantics and user file selection; genuinely private content belongs in a private repo or object storage. Binary files rejected outright.

#!/usr/bin/env bash
# Basic pattern check; the gitleaks pre-commit hook is the main guard.
set -euo pipefail
if git ls-files -z | xargs -0 grep -I -n -E 'BEGIN (RSA|OPENSSH|EC|PGP) PRIVATE KEY|AKIA[0-9A-Z]{16}|ghp_[A-Za-z0-9]{36}|hf_[A-Za-z0-9]{30,}' 2>/dev/null; then
  echo "Possible secret found"; exit 1
fi
echo "ok: no obvious secrets"

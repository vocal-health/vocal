#!/usr/bin/env bash
# Fails if tracked files include audio, model or data files, or anything over 5 MB.
set -euo pipefail
bad=$(git ls-files | grep -Ei '\.(wav|mp3|flac|ogg|opus|m4a|webm|aac|pt|pth|safetensors|ckpt|onnx|bin|npy|npz)$' || true)
if [ -n "$bad" ]; then echo "Blocked file types are tracked:"; echo "$bad"; exit 1; fi
data=$(git ls-files data | grep -v -E '^data/(README\.md|manifests/)' || true)
if [ -n "$data" ]; then echo "Files under data/ other than README and manifests are tracked:"; echo "$data"; exit 1; fi
big=$(git ls-files -z | xargs -0 -I{} sh -c 'test -f "{}" && [ $(wc -c < "{}") -gt 5242880 ] && echo "{}"' || true)
if [ -n "$big" ]; then echo "Files over 5 MB are tracked:"; echo "$big"; exit 1; fi
echo "ok: no blocked data files"

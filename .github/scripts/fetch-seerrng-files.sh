#!/usr/bin/env bash
# Copies the SeerrNG files Lumen builds against (src/, server/, config/, package.json,
# tsconfig.json) from the commit named in UPSTREAM into the workspace root.
set -euo pipefail
sha="$(tr -d '[:space:]' < UPSTREAM)"
[[ "$sha" =~ ^[0-9a-f]{40}$ ]] || { echo "UPSTREAM does not hold a commit id"; exit 1; }
up="${RUNNER_TEMP:-/tmp}/seerrng-upstream"
rm -rf "$up"
git init -q "$up"
git -C "$up" remote add origin https://github.com/snapetech-org/seerrng.git
git -C "$up" sparse-checkout set --no-cone /src/ /server/ /config/ /package.json /tsconfig.json
git -C "$up" fetch -q --depth 1 --filter=blob:none origin "$sha"
git -C "$up" checkout -q FETCH_HEAD
cp -r "$up/src" "$up/server" "$up/config" "$up/package.json" "$up/tsconfig.json" "${GITHUB_WORKSPACE:-$PWD}/"
echo "Using snapetech-org/seerrng@${sha::8}"

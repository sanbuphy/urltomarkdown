#!/usr/bin/env bash
set -eu

# 用法: ./fetch_page.sh [URL] 
# 默认 OUT 为 page.md，只接受 URL 作为第一个参数
URL="${1:-https://www.woshipm.com/pmd/732386.html}"
OUT="page.md"

curl -G --data-urlencode "url=${URL}" \
  -d "title=true" -d "links=false" -d "clean=true" \
  "http://localhost:1337/" -o "$OUT"

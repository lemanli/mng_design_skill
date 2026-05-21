#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HTML_FILE="$ROOT_DIR/index.html"

test -f "$HTML_FILE"
grep -q "华风数据集管理系统" "$HTML_FILE"
grep -q "语料任务列表" "$HTML_FILE"
grep -q "批次详情" "$HTML_FILE"
grep -q "语料确认初审" "$HTML_FILE"
grep -q "Pipeline" "$HTML_FILE"
grep -q "删除任务" "$HTML_FILE"

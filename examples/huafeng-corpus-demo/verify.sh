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
grep -q "采集需求拆解" "$HTML_FILE"
grep -q "文件处理与版本" "$HTML_FILE"
grep -q "PDF 原始页" "$HTML_FILE"
grep -q "OCR 识别页" "$HTML_FILE"
grep -q "版本差异" "$HTML_FILE"
grep -q "驳回后禁止再上传" "$HTML_FILE"
grep -q "批次工作台" "$HTML_FILE"
grep -q "任务结构" "$HTML_FILE"
grep -q "下一步动作" "$HTML_FILE"
grep -q "无外部依赖" "$HTML_FILE"
if grep -q "cdn.tailwindcss.com\\|cdn.jsdelivr.net\\|cdnjs.cloudflare.com\\|x-data\\|x-show" "$HTML_FILE"; then
  echo "prototype must be self-contained without CDN or Alpine directives" >&2
  exit 1
fi

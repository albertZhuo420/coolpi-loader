#!/bin/bash

# 设置项目根路径，只初始化一次
if [[ -z "$PROJECT_ROOT" ]]; then
  export PROJECT_ROOT=$(realpath "$(dirname "${BASH_SOURCE[0]}")/..")
fi

# 设置安全的 trap DEBUG 逻辑
trap '
  src=$(realpath --relative-to="$PROJECT_ROOT" "${BASH_SOURCE[0]}" 2>/dev/null)
  src=${src:-${BASH_SOURCE[0]}}
  echo "+ $src:$LINENO: $BASH_COMMAND"
' DEBUG

set -x

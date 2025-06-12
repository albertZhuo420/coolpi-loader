#!/bin/bash

# ${CP_UBOOT_DBG+x} 会在 CP_UBOOT_DBG 已定义时展开成 x, 未定义时展开成空串
# 用 -z 测试“展开后是空串”即可判断未定义
if [[ ! -z "${CP_UBOOT_DBG+x}" ]]; then
	if [[ -z "$PROJECT_ROOT" ]]; then
		export PROJECT_ROOT_MAKE_SH=$(realpath "$(dirname "$0")/..")
	fi
	export PS4='+ $(realpath --relative-to="$PROJECT_ROOT_MAKE_SH" "${BASH_SOURCE[0]}"):${LINENO}: '
	set -x
fi


#!/bin/bash

if [[ -z "$PROJECT_ROOT" ]]; then
	export PROJECT_ROOT_MAKE_SH=$(realpath "$(dirname "$0")/..")
fi
export PS4='+ $(realpath --relative-to="$PROJECT_ROOT_MAKE_SH" "${BASH_SOURCE[0]}"):${LINENO}: '
set -x

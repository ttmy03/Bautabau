#!/usr/bin/env bash
set -euo pipefail
WINEPREFIX="${WINEPREFIX:-$HOME/.wine-mt5}"
MT5_EXE="$WINEPREFIX/drive_c/Program Files/MetaTrader 5/terminal64.exe"
if [ ! -f "$MT5_EXE" ]; then
  echo "MT5 nicht gefunden unter: $MT5_EXE" >&2
  exit 1
fi
exec wine "$MT5_EXE" "$@"

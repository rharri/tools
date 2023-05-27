#!/usr/bin/env bash
shasum -a $1 $2 | head -n1 | awk '{print $1}' | xargs -I % grep -Fx % $3 || printf 'INVALID CHECKSUM\n'

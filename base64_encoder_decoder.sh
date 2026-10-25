#!/usr/bin/env bash
read -r -p 'Enter text to decode: ' user_input || exit 1
if decoded_result=$(printf '%s' "$user_input" | base64 --decode); then
    printf 'Decoded: %s\n' "$decoded_result"
else
    printf 'Error: invalid Base64 input.\n' >&2
    exit 1
fi

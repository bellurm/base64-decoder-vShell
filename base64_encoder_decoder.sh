#!/bin/bash

read -p "Enter text to decode: " user_input

decoded_result=$(echo -n "$user_input" | base64 --decode)
echo -e "Decoded: $decoded_result\n"

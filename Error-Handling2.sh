#!/bin/bash

FILE=./nonexistent/
if [[ -f "$FILE" ]]; then
echo "file exists"
else
echo "file does not exit"
fi
#!/bin/bash

FILE=`ls|grep -E '_24[0-9]{6}.docx'|tail -n 1`

if [ "X$FILE" == "X" ]; then
    echo Error: No valid file found 
    exit 1
fi

echo VERSION:$FILE

cp "$FILE" Open-C3-User-Guide.docx
git add Open-C3-User-Guide.docx 
git commit -m "Update to $FILE"

git push

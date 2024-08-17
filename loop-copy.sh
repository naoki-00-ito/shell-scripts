#!/bin/bash

# 引数チェック
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <filepath> <loop_count>"
  exit 1
fi

filepath=$1
loop_count=$2
number=1

# 拡張子取得
extension="${filepath##*.}"

# パス取得
directory=$(dirname "$filepath")

while [ $number -le $loop_count ]; do
  filename=$(basename "$filepath" ".$extension")
  cp "$filepath" "$directory/${filename}_${number}.$extension"
  number=$((number + 1))
done
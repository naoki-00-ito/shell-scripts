#!/bin/bash

# 指定したディレクトリ内のファイル名称に含まれるすべてのスペースを削除する

# 引数チェック
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

directory=$1

# ディレクトリ内のファイルを取得
files=$(find "$directory" -type f)

# IFSを設定して、ファイル名に含まれるスペースを無視する
IFS=$'\n'

for file in $files; do
  # ファイル名に含まれるスペースを削除
  new_file=$(echo "$file" | tr -d ' ')
  mv "$file" "$new_file"
done
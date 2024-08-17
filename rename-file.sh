#!/bin/bash

# 指定したディレクトリ内のファイル名称に含まれる文字列を指定文字列に変更する
# 引数チェック
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <directory> <before_str> <after_str>"
  exit 1
fi

directory=$1
before_str=$2
after_str=$3

# ディレクトリ内のファイルを取得
files=$(ls $directory)

for file in $files; do
  # ファイル名を変更
  new_file=$(echo $file | sed "s/$before_str/$after_str/g")
  mv "$directory/$file" "$directory/$new_file"
done
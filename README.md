# shell-scripts

よく使うシェルスクリプト

## [loop-copy.sh](/loop-copy.sh)

指定したファイルを、指定回数個分ループして複製する

ex) /src/hoge.ts を 10個複製する

```bash
bash ./loop-copy.sh ./src/hoge.ts 10
```

## [rename-file.sh](/rename-file.sh)

指定したディレクトリ内のファイル名称に含まれる文字列を指定文字列に変更する

```bash
bash ./rename-file.sh ./src hoge huga
```

## [delete-space.sh](/delete-space.sh)

指定したディレクトリ内のファイル名称に含まれるすべてのスペースを削除する

```bash
bash ./delete-space.sh ./src
```

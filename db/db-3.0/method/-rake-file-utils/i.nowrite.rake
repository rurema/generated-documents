names=nowrite
visibility=public
kind=defined
source_location=manual/api/rake/RakeFileUtils.md
since_by_name=nowrite=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def nowrite(value = nil){ ... }

ファイルを書き込むかどうかを制御します。

- **param** `value` -- 真を指定するとファイルを書き込みません。

```text title="例"
nowrite              # 現在の状態を返します。
nowrite(v)           # 与えられた状態に変更します。
nowrite(v) { code }  # ブロックを評価する間だけ与えられた状態に変更します。
                     # ブロックの評価が終わると元の値に戻します。
```


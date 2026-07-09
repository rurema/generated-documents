names=nowrite
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.ZtgaSH/src/refm/api/src/rake/RakeFileUtils

--- nowrite(value = nil){ ... }

ファイルを書き込むかどうかを制御します。

@param value 真を指定するとファイルを書き込みません。

例:
    nowrite              # 現在の状態を返します。
    nowrite(v)           # 与えられた状態に変更します。
    nowrite(v) { code }  # ブロックを評価する間だけ与えられた状態に変更します。
                         # ブロックの評価が終わると元の値に戻します。



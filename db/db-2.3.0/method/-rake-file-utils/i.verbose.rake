names=verbose
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.xqkPhh/src/refm/api/src/rake/RakeFileUtils

--- verbose(value = nil){ ... }

詳細を出力するかどうかを制御します。

@param value 真を指定すると詳細を出力します。

例
    verbose              # 現在の状態を返します。
    verbose(v)           # 与えられた状態に変更します。
    verbose(v) { code }  # ブロックを評価する間だけ与えられた状態に変更します。
                         # ブロックの評価が終わると元の値に戻します。


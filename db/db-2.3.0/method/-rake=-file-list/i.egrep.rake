names=egrep
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.xqkPhh/src/refm/api/src/rake/Rake__FileList

--- egrep(pattern){|filename, count, line| ... }

与えられたパターンをファイルリストから grep のように検索します。

ブロックが与えられた場合は、マッチした行の情報 (ファイル名、行番号、マッチした行) が
ブロックに渡されてブロックが評価されます。ブロックが与えられなかった場合は、
標準出力に、ファイル名:行番号:マッチした行を出力します。

@param pattern 正規表現を指定します。


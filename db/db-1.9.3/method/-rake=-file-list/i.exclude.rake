names=exclude
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.ZtgaSH/src/refm/api/src/rake/Rake__FileList

--- exclude(*patterns){|entry| ... } -> self

自身から取り除くべきファイル名のパターンを自身の除外リストに登録します。

パターンとして正規表現、グロブパターン、文字列が使用可能です。
さらにブロックが与えられた場合は、ブロックを評価して真になったエントリを削除します。

グロブパターンはファイルシステムに対して展開されます。
もし、ファイルシステムに存在しないファイルを明示的にリストへ追加した場合、
グロブパターンではそのファイルをリストから削除しません。

例:
  FileList['a.c', 'b.c'].exclude("a.c") # => ['b.c']
  FileList['a.c', 'b.c'].exclude(/^a/)  # => ['b.c']

  # If "a.c" is a file, then ...
  FileList['a.c', 'b.c'].exclude("a.*") # => ['b.c']

  # If "a.c" is not a file, then ...
  FileList['a.c', 'b.c'].exclude("a.*") # => ['a.c', 'b.c']


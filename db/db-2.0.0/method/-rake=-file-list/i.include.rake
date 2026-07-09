names=include
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.ryNQ5k/src/refm/api/src/rake/Rake__FileList

--- include(*filenames) -> self

ファイル名のパターンを追加リストに登録します。
配列が与えられた場合、配列の各要素が追加されます。

@param filenames 追加するファイル名のパターンを指定します。

例:
   file_list.include("*.java", "*.cfg")
   file_list.include %w( math.c lib.h *.o )


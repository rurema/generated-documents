names=ruby
visibility=public
kind=added
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.ryNQ5k/src/refm/api/src/rake/core_ext

--- ruby(*args){|result, status| ... }

与えられた引数で Ruby インタプリタを実行します。

@param args Ruby インタプリタに与える引数を指定します。

例:
   ruby %{-pe '$_.upcase!' <README}

@see [[m:Kernel.#sh]]


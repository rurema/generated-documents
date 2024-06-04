names=ruby
visibility=public
kind=added
source_location=refm/api/src/rake/core_ext:264

--- ruby(*args){|result, status| ... }

与えられた引数で Ruby インタプリタを実行します。

@param args Ruby インタプリタに与える引数を指定します。

例:
   ruby %{-pe '$_.upcase!' <README}

@see [[m:Kernel.#sh]]


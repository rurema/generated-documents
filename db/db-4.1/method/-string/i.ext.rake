names=ext
visibility=public
kind=added
source_location=refm/api/src/rake/core_ext:27

--- ext(newext = '') -> String

自身の拡張子を与えられた拡張子で置き換えます。

自身に拡張子が無い場合は、与えられた拡張子を追加します。
与えられた拡張子が空文字列の場合は、自身の拡張子を削除します。

@param newext 新しい拡張子を指定します。

例:
  require "rake"

  "hoge".ext(".rb")          # => "hoge.rb"
  "hoge.rb".ext(".erb")      # => "hoge.erb"
  "hoge.tar.gz".ext(".bz2")  # => "hoge.tar.bz2"


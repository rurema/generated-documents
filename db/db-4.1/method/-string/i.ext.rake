names=ext
visibility=public
kind=added
source_location=manual/api/rake/String.md
since_by_name=ext=1.9.3
until_by_name=

### def ext(newext = '') -> String

自身の拡張子を与えられた拡張子で置き換えます。

自身に拡張子が無い場合は、与えられた拡張子を追加します。
与えられた拡張子が空文字列の場合は、自身の拡張子を削除します。

- **param** `newext` -- 新しい拡張子を指定します。

```ruby title="例"
require "rake"

p "hoge".ext(".rb")        # => "hoge.rb"
p "hoge.rb".ext(".erb")    # => "hoge.erb"
p "hoge.tar.gz".ext(".bz2")  # => "hoge.tar.bz2"
```


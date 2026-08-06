# Etc?.sysconfdir

### module_function def sysconfdir -> String | nil

システムの設定ディレクトリを返します。

```ruby
require 'etc'
p Etc.sysconfdir # => "/etc"
```

主に "/etc" を返しますが、Ruby をソースからビルドした場合は異なるディレクトリを返す場合があります。例えば、Ruby を /usr/local にインストールした場合は、"/usr/local/etc" を返します。
Windows では常にシステムで提供されたディレクトリを返します。

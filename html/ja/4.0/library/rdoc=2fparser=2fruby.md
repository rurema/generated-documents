# library rdoc/parser/ruby

Ruby のソースコードを解析するためのサブライブラリです。

拡張子が .rb、.rbw のファイルを解析する事ができます。

### メタプログラミングされたメソッド

動的に定義されたメソッドをドキュメントに含めたい場合、## でコメントを開始します。

```ruby
##
# This is a meta-programmed method!

add_my_method :meta_method, :arg1, :arg2
```

[RDoc::Parser::Ruby](../class/RDoc=3a=3aParser=3a=3aRuby.md) は上記の :meta_method ようにメソッドの定義を行うような識別子の後に続くトークンをメソッド名として解釈します。メソッド名が見つからなかった場合、警告が表示されます。また、この場合はメソッド名は 'unknown' になります。

:method: 命令を使う事でメソッド名を指定する事もできます。

```text
##
# :method: woo_hoo!
```

デフォルトでは動的に定義されたメソッドはインスタンスメソッドとして解析されます。特異メソッドとしたい場合は、:singleton-method: 命令を指定します。

```text
##
# :singleton-method:
```

以下のようにメソッド名を指定する事もできます。

```text
##
# :singleton-method: woo_hoo!
```

また、属性についても同様に :attr:、 :attr_reader:、 :attr_writer:、
:attr_accessor: を指定する事ができます。属性の名前は省略できます。

```text
##
# :attr_reader: my_attr_name
```

### 隠しメソッド、属性

:method:、 :singleton-method: や :attr: 命令を使う事で実際には定義されていないメソッドもドキュメントに含める事ができます。

```ruby
##
# :attr_writer: ghost_writer
# There is an attribute here, but you can't see it!

##
# :method: ghost_method
# There is a method here, but you can't see it!

##
# this is a comment for a regular method

def regular_method() end
```

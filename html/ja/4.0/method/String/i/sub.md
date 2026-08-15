# String#sub

### def sub(pattern, replace) -> String

文字列中で pattern にマッチした最初の部分を文字列 replace で置き換えた文字列を生成して返します。

置換文字列 replace 中の `\&` と `\0` はマッチした部分文字列に、
`\1` ... `\9` は n 番目の括弧の内容に置き換えられます。
置換文字列内では `` \` ``、`\'`、`\+` も使えます。
これらは [m:$\`]、[m:$']、[m:$+] に対応します。
pattern が名前付きキャプチャを含む正規表現である場合は、
`\k<name>` の形式でその名前に対応する部分文字列に置き換えられます。

- **param** `pattern` --    置き換える文字列のパターンを表す文字列か正規表現。
                  文字列を指定した場合は全く同じ文字列にだけマッチする
- **param** `replace` --    pattern で指定した文字列と置き換える文字列

```ruby title="例"
p 'abcdefg'.sub(/def/, '!!')          # => "abc!!g"
p 'abcabc'.sub(/b/, '<<\&>>')         # => "a<<b>>cabc"
p 'xxbbxbb'.sub(/x+(b+)/, 'X<<\1>>')  # => "X<<bb>>xbb"
p 'foo'.sub(/(?<name>fo)/, 'match: \k<name>') # => "match: foo"
```

注意:

第 2 引数 replace に [m:$1] を埋め込んでも意図した結果にはなりません。
この文字列が評価される時点ではまだ正規表現マッチが行われておらず、
$1 がセットされていないからです。

また、sub では「\」が部分文字列との置き換えという特別な意味を持つため、
replace に「\」自身を入れたいときは「\」を二重にエスケープしなければなりません。

```ruby title="ひとつめの括弧の内容に置き換えるときによくある間違い"
p 'xbbb-xbbb'.sub(/x(b+)/, "#{$1}")   # => "-xbbb"     # NG
p 'xbbb-xbbb'.sub(/x(b+)/, "\1")      # => "1-xbbb"    # NG
p 'xbbb-xbbb'.sub(/x(b+)/, "\\1")     # => "bbb-xbbb"  # OK
p 'xbbb-xbbb'.sub(/x(b+)/, '\1')      # => "bbb-xbbb"  # OK
p 'xbbb-xbbb'.sub(/x(b+)/, '\\1')     # => "bbb-xbbb"  # OK
```

```ruby title="バックスラッシュを倍にするときによくある間違い"
puts '\n'.sub(/\\/, "\\\\")      # => \n   # NG
puts '\n'.sub(/\\/, '\\\\')      # => \n   # NG
puts '\n'.sub(/\\/, "\\\\\\\\")  # => \\n  # OK
puts '\n'.sub(/\\/, '\\\\\\\\')  # => \\n  # OK
```

このような間違いを確実に防止し、コードの可読性を上げるには、
`\&` や `\1` よりも下記のようにブロック付き形式の sub を使うべきです。

```ruby title="安全な例"
p 'xbbb-xbbb'.sub(/x(b+)/) { $1 }   # => "bbb-xbbb"  # OK

puts '\n'.sub(/\\/) { '\\\\' }      # => \\n        # OK
```

- **SEE** [String#gsub](../../../method/String/i/gsub.md)

### def sub(pattern) {|matched| .... } -> String

文字列中で pattern にマッチした最初の部分をブロックに渡し、その評価結果で置き換えた新しい文字列を返します。
ブロックなしの sub と違い、ブロックの中からは組み込み変数 [m:$1], $2, $3, ... を問題なく参照できます。

- **param** `pattern` --    置き換える文字列のパターンを表す文字列か正規表現。
                  文字列を指定した場合は全く同じ文字列にだけマッチする

```ruby title="例"
p 'abcabc'.sub(/b/) {|s| s.upcase }  # => "aBcabc"
p 'abcabc'.sub(/b/) { $&.upcase }    # => "aBcabc"
```

- **SEE** [String#gsub](../../../method/String/i/gsub.md)

### def sub(pattern, hash) -> String

文字列中の pattern にマッチした部分をキーにして hash を引いた値で置き換えます。

- **param** `pattern` --    置き換える文字列のパターン
- **param** `hash` --       置き換える文字列を与えるハッシュ

```ruby title="例"
hash = {'b'=>'B', 'c'=>'C'}
p "abcabc".sub(/[bc]/){hash[$&]} # => "aBcabc"
p "abcabc".sub(/[bc]/, hash)     # => "aBcabc"
```

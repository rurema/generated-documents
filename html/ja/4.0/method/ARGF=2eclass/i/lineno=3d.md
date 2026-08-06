# ARGF.class#lineno=

### def lineno=(number)
{: since=""}

全引数ファイルを一つのファイルとみなしたときの現在の行番号を number に書き換えます。

この値を読み込みたい場合は [ARGF.class#lineno](../../../method/ARGF=2eclass/i/lineno.md) を使用してください。

- **param** `number` -- 更新後の行番号を指定する

```ruby
p ARGF.lineno    # => 0
p ARGF.readline  # => "This is line 1\n"
p ARGF.lineno    # => 1
ARGF.lineno = 0  # => 0
p ARGF.lineno    # => 0
```

- **SEE** [ARGF.class#lineno](../../../method/ARGF=2eclass/i/lineno.md)

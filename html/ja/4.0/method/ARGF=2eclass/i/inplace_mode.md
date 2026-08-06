# ARGF.class#inplace_mode

### def inplace_mode -> String | nil
{: since="1.9.1"}

[ARGF#inplace](../../../class/ARGF.md#inplace) で書き換えるファイルのバックアップに付加される拡張子を返します。拡張子が設定されていない場合は空文字列を返します。インプレースモードでない場合は nil を返します。

Ruby 起動時の -i オプション や [ARGF.class#inplace_mode=](../../../method/ARGF=2eclass/i/inplace_mode=3d.md) で設定します。

```ruby title="例"
# $ echo "test" > test.txt
# $ ruby -i.bak test.rb test.txt
# $ cat test.txt # => "TEST"
# $ cat test.txt.bak # => "test"

# test.rb
p ARGF.inplace_mode                 # => ".bak"
p ARGF.each_line {|e|print e.upcase}  # => "TEST"
```

```ruby title="例"
# $ echo "test" > test.txt
# $ ruby test.rb test.txt
# $ cat test.txt # => "test"

# test.rb
p ARGF.inplace_mode                 # => nil
p ARGF.each_line {|e|print e.upcase}  # => "TEST"
```

- **SEE** [spec/rubycmd#cmd_option](../../../doc/spec=2frubycmd.md#cmd_option), [ARGF.class#inplace_mode=](../../../method/ARGF=2eclass/i/inplace_mode=3d.md)

# ARGF.class#each_char

### def each_char { |c| ... } -> self
{: since=""}
### def each_char             -> Enumerator
{: since=""}

レシーバに含まれる文字を一文字ずつブロックに渡して評価します。

このメソッドはスクリプトに指定した引数([Object::ARGV](../../../method/Object/c/ARGV.md) を参照) をファイル名とみなして、それらのファイルを連結した 1 つの仮想ファイルを表すオブジェクトです。そのため、最初のファイルを最後まで読んだ後は次のファイルの内容を返します。現在位置の1文字についてファイル名を得るには
[ARGF.class#filename](../../../method/ARGF=2eclass/i/filename.md) を使用します。

ブロックが与えられなかった場合は、[Enumerator](../../../class/Enumerator.md) オブジェクトを生成して返します。

```ruby title="例"
# $ echo "line1\n" > test1.txt
# $ echo "line2\n" > test2.txt
# $ ruby test.rb test1.txt test2.txt

# test.rb
p ARGF.each_char        # => #<Enumerator: ARGF:each_char>
ARGF.each_char{|e|p e}

# => "l"
#    "i"
#    "n"
#    "e"
#    "1"
#    "\n"
#    "l"
#    "i"
#    "n"
#    "e"
#    "2"
#    "\n"
```

- **SEE** [IO#each_char](../../../method/IO/i/each_char.md)

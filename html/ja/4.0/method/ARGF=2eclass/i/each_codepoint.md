# ARGF.class#each_codepoint

### def each_codepoint { |c| ... }   -> self
{: since="1.9.3"}
### def each_codepoint               -> Enumerator
{: since="1.9.3"}

self の各コードポイントに対して繰り返しブロックを呼びだします。

ブロックの引数にはコードポイントを表す整数が渡されます。

ブロックを省略した場合には、[Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
# $ echo "line1\n" > test1.txt
# $ echo "line2\n" > test2.txt
# $ ruby test.rb test1.txt test2.txt

# test.rb
p ARGF.each_codepoint                # => #<Enumerator: ARGF:each_codepoint>
p ARGF.each_codepoint{|e|print e, ","} # => 108,105,110,101,49,10,108,105,110,101,50,10,
```

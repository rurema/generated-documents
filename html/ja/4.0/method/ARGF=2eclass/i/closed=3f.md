# ARGF.class#closed?

### def closed? -> bool
{: since=""}

現在開いている処理対象のファイルがARGFがcloseされていればtrueを返します。

```ruby title="例"
# $ echo "foo" > foo
# $ echo "bar" > bar
# $ ruby argf.rb foo bar

p ARGF.filename  # => "foo"
ARGF.close
# 複数のファイルを開いているので1度のARGF.closeではまた全てのファイルを閉じていないのでfalseになる
p ARGF.closed? # => false
p ARGF.filename  # => "bar"
ARGF.close
# 2つのファイルを開いていたので2度目のARGF.closeで全てのファイルを閉じたためtrueになる
p ARGF.closed? # => true
```

- **SEE** [IO#closed?](../../../method/IO/i/closed=3f.md), [ARGF.class#close](../../../method/ARGF=2eclass/i/close.md)

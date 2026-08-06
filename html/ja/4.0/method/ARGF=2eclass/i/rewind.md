# ARGF.class#rewind

### def rewind -> 0
{: since=""}

ARGFが現在開いているファイルのファイルポインタを先頭に戻します。

```ruby
p ARGF.readline # => "This is line one\n"
p ARGF.rewind   # => 0
p ARGF.lineno   # => 0
p ARGF.readline # => "This is line one\n"
```

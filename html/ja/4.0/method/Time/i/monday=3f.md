# Time#monday?

### def monday? -> bool

self の表す時刻が月曜日である場合に true を返します。
そうでない場合に false を返します。

```ruby
t = Time.local(2003, 8, 4)       # => 2003-08-04 00:00:00 +0900
p t.monday?                      # => true
```

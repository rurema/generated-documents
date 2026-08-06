# Time#sunday?

### def sunday? -> bool

self の表す時刻が日曜日である場合に true を返します。
そうでない場合に false を返します。

```ruby
t = Time.local(1990, 4, 1)       # => 1990-04-01 00:00:00 +0900
p t.sunday?                      # => true
```

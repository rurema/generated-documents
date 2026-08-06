# Fiddle::Handle#sym

### def sym(func) -> Integer
### def [](func)  -> Integer

関数やグローバル変数 func へのポインタを取得し、整数として返します。

- **param** `func` -- 得たいシンボルの名前を文字列で与えます。

- **raise** `Fiddle::DLError` -- シンボルが見つからなかった時に発生します。

```ruby
require 'fiddle'
  
h = Fiddle::Handle.new('libc.so.6')
p h.sym('strlen') # 関数ポインタのアドレスを整数で表示
```

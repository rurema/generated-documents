# IO#close_on_exec?

### def close_on_exec?   -> bool

自身に close-on-exec フラグが設定されていた場合 true を返します。
そうでない場合に false を返します。

```ruby
f = open("/dev/null")
p f.close_on_exec?               # => true
f.close_on_exec = false
p f.close_on_exec?               # => false
f.close_on_exec = true
p f.close_on_exec?               # => true
```

- **SEE** [IO#close_on_exec=](../../../method/IO/i/close_on_exec=3d.md)

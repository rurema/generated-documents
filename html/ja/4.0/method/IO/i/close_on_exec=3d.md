# IO#close_on_exec=

### def close_on_exec=(bool)

自身に close-on-exec フラグを設定します。

このフラグをセットすると [man:exec(2)] 時にそのファイルデスクリプタを
close します。

- **SEE** [man:fcntl(2)]
- **param** `bool` -- 自身の close-on-exec フラグを true か false で指定します。

```ruby
f = open("/dev/null")
f.close_on_exec = true
system("cat", "/proc/self/fd/#{f.fileno}") # cat: /proc/self/fd/3: No such file or directory
p f.closed?              # => false
```

- **SEE** [IO#close_on_exec?](../../../method/IO/i/close_on_exec=3f.md)

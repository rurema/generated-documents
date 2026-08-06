# File.umask

### def File.umask           -> Integer

現在の umask の値を返します。

- **SEE** [man:umask(2)]

### def File.umask(umask)    -> Integer

umask を変更します。変更前の umask の値を返します。

- **param** `umask` -- 設定したい umask の値を整数で指定します。

```ruby title="例"
p File.umask(0006) # => 18
p File.umask       # => 6
```

- **SEE** [man:umask(2)]

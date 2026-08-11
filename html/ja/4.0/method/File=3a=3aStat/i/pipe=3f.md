# File::Stat#pipe?

### def pipe? -> bool

無名パイプおよび名前つきパイプ(FIFO)の時に真を返します。


```ruby
system("mkfifo /tmp/pipetest")
p File::Stat.new("/tmp/pipetest").pipe? # => true
```

# Pathname#ctime

### def ctime -> Time

File.ctime(self.to_s) を渡したものと同じです。

```ruby title="例"
require 'pathname'

IO.write("testfile", "test")
pathname = Pathname("testfile")
pathname.ctime # => 2019-01-14 00:39:51 +0900
sleep 1
pathname.chmod(0755)
pathname.ctime # => 2019-01-14 00:39:52 +0900
```

- **SEE** [File.ctime](../../../method/File/s/ctime.md)

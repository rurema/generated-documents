# File::Stat#birthtime

### def birthtime -> Time

作成された時刻を返します。

- **raise** `NotImplementedError` --  Windows のような birthtime のない環境で発生します。

```ruby
File.write("testfile", "foo")
sleep 10
File.write("testfile", "bar")
sleep 10
File.chmod(0644, "testfile")
sleep 10
File.read("testfile")
p File.stat("testfile").birthtime #=> 2014-02-24 11:19:17 +0900
p File.stat("testfile").mtime     #=> 2014-02-24 11:19:27 +0900
p File.stat("testfile").ctime     #=> 2014-02-24 11:19:37 +0900
p File.stat("testfile").atime     #=> 2014-02-24 11:19:47 +0900
```

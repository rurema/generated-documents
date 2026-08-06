# IO#autoclose=

### def autoclose=(bool)

auto-close フラグを設定します。

フラグが設定されているオブジェクトは
close時/GCでのファイナライザ呼出時にファイルデスクリプタを close します。
偽を設定すると close しません。

- **param** `bool` -- 真偽値でフラグを設定します
- **SEE** [IO#autoclose?](../../../method/IO/i/autoclose=3f.md)

```ruby
f = open("/dev/null")
IO.for_fd(f.fileno)
# ...
f.gets # may cause Errno::EBADF

f = open("/dev/null")
IO.for_fd(f.fileno).autoclose = false
# ...
f.gets # won't cause Errno::EBADF
```

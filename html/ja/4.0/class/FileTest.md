# module FileTest

ファイルの検査関数を集めたモジュールです。

### 注意

FileTest で定義された各メソッドは、システムコールに失敗しても例外を発生させません。
真を返した時のみ、返り値は意味をもちます。
例えば、

```ruby
File.exist?('/root/.bashrc')
```

が false を返しても、それはファイルが存在しないことを保証しません。

## Module Functions

- [blockdev?](../method/FileTest/m/blockdev=3f.md)
- [chardev?](../method/FileTest/m/chardev=3f.md)
- [directory?](../method/FileTest/m/directory=3f.md)
- [empty?](../method/FileTest/m/empty=3f.md)
- [zero?](../method/FileTest/m/zero=3f.md)
- [executable?](../method/FileTest/m/executable=3f.md)
- [executable_real?](../method/FileTest/m/executable_real=3f.md)
- [exist?](../method/FileTest/m/exist=3f.md)
- [file?](../method/FileTest/m/file=3f.md)
- [grpowned?](../method/FileTest/m/grpowned=3f.md)
- [identical?](../method/FileTest/m/identical=3f.md)
- [owned?](../method/FileTest/m/owned=3f.md)
- [pipe?](../method/FileTest/m/pipe=3f.md)
- [readable?](../method/FileTest/m/readable=3f.md)
- [readable_real?](../method/FileTest/m/readable_real=3f.md)
- [setgid?](../method/FileTest/m/setgid=3f.md)
- [setuid?](../method/FileTest/m/setuid=3f.md)
- [size](../method/FileTest/m/size.md)
- [size?](../method/FileTest/m/size=3f.md)
- [socket?](../method/FileTest/m/socket=3f.md)
- [sticky?](../method/FileTest/m/sticky=3f.md)
- [symlink?](../method/FileTest/m/symlink=3f.md)
- [world_readable?](../method/FileTest/m/world_readable=3f.md)
- [world_writable?](../method/FileTest/m/world_writable=3f.md)
- [writable?](../method/FileTest/m/writable=3f.md)
- [writable_real?](../method/FileTest/m/writable_real=3f.md)

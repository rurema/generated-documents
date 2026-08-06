# class Pathname < Object

パス名をオブジェクト指向らしく扱うクラスです。

Pathname オブジェクトはパス名を表しており、ファイルやディレクトリそのものを表してはいません。
当然、存在しないファイルのパス名も扱えます。

絶対パスも相対パスも扱えます。

Pathname オブジェクトは immutable であり、自身を破壊的に操作するメソッドはありません。

Pathname のインスタンスメソッドには、ディレクトリのパスを返す [Pathname#dirname](../method/Pathname/i/dirname.md) のように、文字列操作だけで結果を返すものもあれば、ファイルの中身を読み出す [Pathname#read](../method/Pathname/i/read.md) のようにファイルシステムにアクセスするものもあります。

Pathname オブジェクトの生成には、[Pathname.new](../method/Pathname/s/new.md) のほかに [Kernel?.Pathname](../method/Kernel/m/Pathname.md) も使えます。

```ruby title="例"
require 'pathname'

p Pathname.new("foo/bar") # => #<Pathname:foo/bar>
p Pathname("foo/bar")   # => #<Pathname:foo/bar>
```

## Class Methods

- [getwd](../method/Pathname/s/getwd.md)
- [pwd](../method/Pathname/s/pwd.md)
- [glob](../method/Pathname/s/glob.md)
- [new](../method/Pathname/s/new.md)

## Instance Methods

- [+](../method/Pathname/i/=2b.md)
- [/](../method/Pathname/i/=2f.md)
- [<=>](../method/Pathname/i/=3c=3d=3e.md)
- [==](../method/Pathname/i/=3d=3d.md)
- [===](../method/Pathname/i/=3d=3d=3d.md)
- [eql?](../method/Pathname/i/eql=3f.md)
- [absolute?](../method/Pathname/i/absolute=3f.md)
- [ascend](../method/Pathname/i/ascend.md)
- [atime](../method/Pathname/i/atime.md)
- [basename](../method/Pathname/i/basename.md)
- [binread](../method/Pathname/i/binread.md)
- [binwrite](../method/Pathname/i/binwrite.md)
- [birthtime](../method/Pathname/i/birthtime.md)
- [blockdev?](../method/Pathname/i/blockdev=3f.md)
- [chardev?](../method/Pathname/i/chardev=3f.md)
- [children](../method/Pathname/i/children.md)
- [chmod](../method/Pathname/i/chmod.md)
- [chown](../method/Pathname/i/chown.md)
- [cleanpath](../method/Pathname/i/cleanpath.md)
- [ctime](../method/Pathname/i/ctime.md)
- [delete](../method/Pathname/i/delete.md)
- [unlink](../method/Pathname/i/unlink.md)
- [descend](../method/Pathname/i/descend.md)
- [directory?](../method/Pathname/i/directory=3f.md)
- [dirname](../method/Pathname/i/dirname.md)
- [each_child](../method/Pathname/i/each_child.md)
- [each_entry](../method/Pathname/i/each_entry.md)
- [each_filename](../method/Pathname/i/each_filename.md)
- [each_line](../method/Pathname/i/each_line.md)
- [empty?](../method/Pathname/i/empty=3f.md)
- [entries](../method/Pathname/i/entries.md)
- [executable?](../method/Pathname/i/executable=3f.md)
- [executable_real?](../method/Pathname/i/executable_real=3f.md)
- [exist?](../method/Pathname/i/exist=3f.md)
- [expand_path](../method/Pathname/i/expand_path.md)
- [extname](../method/Pathname/i/extname.md)
- [file?](../method/Pathname/i/file=3f.md)
- [find](../method/Pathname/i/find.md)
- [fnmatch](../method/Pathname/i/fnmatch.md)
- [fnmatch?](../method/Pathname/i/fnmatch=3f.md)
- [ftype](../method/Pathname/i/ftype.md)
- [glob](../method/Pathname/i/glob.md)
- [grpowned?](../method/Pathname/i/grpowned=3f.md)
- [hash](../method/Pathname/i/hash.md)
- [join](../method/Pathname/i/join.md)
- [lchmod](../method/Pathname/i/lchmod.md)
- [lchown](../method/Pathname/i/lchown.md)
- [lstat](../method/Pathname/i/lstat.md)
- [lutime](../method/Pathname/i/lutime.md)
- [make_link](../method/Pathname/i/make_link.md)
- [make_symlink](../method/Pathname/i/make_symlink.md)
- [mkdir](../method/Pathname/i/mkdir.md)
- [mkpath](../method/Pathname/i/mkpath.md)
- [mountpoint?](../method/Pathname/i/mountpoint=3f.md)
- [mtime](../method/Pathname/i/mtime.md)
- [open](../method/Pathname/i/open.md)
- [opendir](../method/Pathname/i/opendir.md)
- [owned?](../method/Pathname/i/owned=3f.md)
- [parent](../method/Pathname/i/parent.md)
- [pipe?](../method/Pathname/i/pipe=3f.md)
- [read](../method/Pathname/i/read.md)
- [readable?](../method/Pathname/i/readable=3f.md)
- [readable_real?](../method/Pathname/i/readable_real=3f.md)
- [readlines](../method/Pathname/i/readlines.md)
- [readlink](../method/Pathname/i/readlink.md)
- [realdirpath](../method/Pathname/i/realdirpath.md)
- [realpath](../method/Pathname/i/realpath.md)
- [relative?](../method/Pathname/i/relative=3f.md)
- [relative_path_from](../method/Pathname/i/relative_path_from.md)
- [rename](../method/Pathname/i/rename.md)
- [rmdir](../method/Pathname/i/rmdir.md)
- [rmtree](../method/Pathname/i/rmtree.md)
- [root?](../method/Pathname/i/root=3f.md)
- [setgid?](../method/Pathname/i/setgid=3f.md)
- [setuid?](../method/Pathname/i/setuid=3f.md)
- [size](../method/Pathname/i/size.md)
- [size?](../method/Pathname/i/size=3f.md)
- [socket?](../method/Pathname/i/socket=3f.md)
- [split](../method/Pathname/i/split.md)
- [stat](../method/Pathname/i/stat.md)
- [sticky?](../method/Pathname/i/sticky=3f.md)
- [sub](../method/Pathname/i/sub.md)
- [sub_ext](../method/Pathname/i/sub_ext.md)
- [symlink?](../method/Pathname/i/symlink=3f.md)
- [sysopen](../method/Pathname/i/sysopen.md)
- [to_path](../method/Pathname/i/to_path.md)
- [to_s](../method/Pathname/i/to_s.md)
- [truncate](../method/Pathname/i/truncate.md)
- [utime](../method/Pathname/i/utime.md)
- [world_readable?](../method/Pathname/i/world_readable=3f.md)
- [world_writable?](../method/Pathname/i/world_writable=3f.md)
- [writable?](../method/Pathname/i/writable=3f.md)
- [writable_real?](../method/Pathname/i/writable_real=3f.md)
- [write](../method/Pathname/i/write.md)
- [zero?](../method/Pathname/i/zero=3f.md)

## Constants

- [SEPARATOR_PAT](../method/Pathname/c/SEPARATOR_PAT.md)
- [TO_PATH](../method/Pathname/c/TO_PATH.md)

# class File::Stat < Object

ファイルの情報を格納したオブジェクトのクラス。

[FileTest](../class/FileTest.md) に同名のモジュール関数がある場合はそれと同じ働きをします。ただ、ファイル名を引数に取るかわりに Stat 自身について判定する点が違います。

```ruby
p File::Stat.new($0).directory? #=> false
p FileTest.directory?($0) #=> false
```

1.8 以降では、属性メソッドがシステムでサポートされていない場合 nil が返ります。
なお、1.7 以前では 0 が返っていました。

```text
dev         デバイス番号(ファイルシステム)
dev_major   dev の major 番号部
dev_minor   dev の minor 番号部
ino         i-node 番号
mode        ファイルモード
nlink       ハードリンクの数
uid         オーナーのユーザID
gid         オーナーのグループID
rdev        デバイスタイプ(スペシャルファイルのみ)
rdev_major  rdev の major 番号部
rdev_minor  rdev の minor 番号部
size        ファイルサイズ(バイト単位)
blksize     望ましいI/Oのブロックサイズ
blocks      割り当てられているブロック数
atime       最終アクセス時刻
mtime       最終更新時刻
ctime       最終状態変更時刻(状態の変更とは chmod などによるもので、Unix では i-node の変更を意味します)
```

## Class Methods

- [new](../method/File=3a=3aStat/s/new.md)

## Instance Methods

- [<=>](../method/File=3a=3aStat/i/=3c=3d=3e.md)
- [atime](../method/File=3a=3aStat/i/atime.md)
- [birthtime](../method/File=3a=3aStat/i/birthtime.md)
- [blksize](../method/File=3a=3aStat/i/blksize.md)
- [blockdev?](../method/File=3a=3aStat/i/blockdev=3f.md)
- [blocks](../method/File=3a=3aStat/i/blocks.md)
- [chardev?](../method/File=3a=3aStat/i/chardev=3f.md)
- [ctime](../method/File=3a=3aStat/i/ctime.md)
- [dev](../method/File=3a=3aStat/i/dev.md)
- [dev_major](../method/File=3a=3aStat/i/dev_major.md)
- [dev_minor](../method/File=3a=3aStat/i/dev_minor.md)
- [directory?](../method/File=3a=3aStat/i/directory=3f.md)
- [executable?](../method/File=3a=3aStat/i/executable=3f.md)
- [executable_real?](../method/File=3a=3aStat/i/executable_real=3f.md)
- [file?](../method/File=3a=3aStat/i/file=3f.md)
- [ftype](../method/File=3a=3aStat/i/ftype.md)
- [gid](../method/File=3a=3aStat/i/gid.md)
- [grpowned?](../method/File=3a=3aStat/i/grpowned=3f.md)
- [ino](../method/File=3a=3aStat/i/ino.md)
- [mode](../method/File=3a=3aStat/i/mode.md)
- [mtime](../method/File=3a=3aStat/i/mtime.md)
- [nlink](../method/File=3a=3aStat/i/nlink.md)
- [owned?](../method/File=3a=3aStat/i/owned=3f.md)
- [pipe?](../method/File=3a=3aStat/i/pipe=3f.md)
- [rdev](../method/File=3a=3aStat/i/rdev.md)
- [rdev_major](../method/File=3a=3aStat/i/rdev_major.md)
- [rdev_minor](../method/File=3a=3aStat/i/rdev_minor.md)
- [readable?](../method/File=3a=3aStat/i/readable=3f.md)
- [readable_real?](../method/File=3a=3aStat/i/readable_real=3f.md)
- [setgid?](../method/File=3a=3aStat/i/setgid=3f.md)
- [setuid?](../method/File=3a=3aStat/i/setuid=3f.md)
- [size](../method/File=3a=3aStat/i/size.md)
- [size?](../method/File=3a=3aStat/i/size=3f.md)
- [socket?](../method/File=3a=3aStat/i/socket=3f.md)
- [sticky?](../method/File=3a=3aStat/i/sticky=3f.md)
- [symlink?](../method/File=3a=3aStat/i/symlink=3f.md)
- [uid](../method/File=3a=3aStat/i/uid.md)
- [world_readable?](../method/File=3a=3aStat/i/world_readable=3f.md)
- [world_writable?](../method/File=3a=3aStat/i/world_writable=3f.md)
- [writable?](../method/File=3a=3aStat/i/writable=3f.md)
- [writable_real?](../method/File=3a=3aStat/i/writable_real=3f.md)
- [zero?](../method/File=3a=3aStat/i/zero=3f.md)

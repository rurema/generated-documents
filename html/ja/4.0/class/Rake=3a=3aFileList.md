# class Rake::FileList < Object

このクラスは [Array](../class/Array.md) と基本的には同じです。

ファイルの操作をほんの少しだけ、簡単にするためのヘルパーメソッドがいくつか定義されています。

[Rake::FileList](../class/Rake=3a=3aFileList.md) は与えられた glob のパターンを使ってすぐにファイルを検索せずに、後で評価するためにそれを保存しておきます。

このことは、多くのファイルにマッチする多くの [Rake::FileList](../class/Rake=3a=3aFileList.md) を使用できることを意味します。
実際に使用されると [Rake::FileList](../class/Rake=3a=3aFileList.md) が保持するパターンが評価されます。

## Class Methods

- [\[\]](../method/Rake=3a=3aFileList/s/=5b=5d.md)
- [new](../method/Rake=3a=3aFileList/s/new.md)

## Instance Methods

- [*](../method/Rake=3a=3aFileList/i/=2a.md)
- [==](../method/Rake=3a=3aFileList/i/=3d=3d.md)
- [clear_exclude](../method/Rake=3a=3aFileList/i/clear_exclude.md)
- [egrep](../method/Rake=3a=3aFileList/i/egrep.md)
- [exclude](../method/Rake=3a=3aFileList/i/exclude.md)
- [excluded_from_list?](../method/Rake=3a=3aFileList/i/excluded_from_list=3f.md)
- [existing](../method/Rake=3a=3aFileList/i/existing.md)
- [existing!](../method/Rake=3a=3aFileList/i/existing=21.md)
- [ext](../method/Rake=3a=3aFileList/i/ext.md)
- [gsub](../method/Rake=3a=3aFileList/i/gsub.md)
- [gsub!](../method/Rake=3a=3aFileList/i/gsub=21.md)
- [import](../method/Rake=3a=3aFileList/i/import.md)
- [include](../method/Rake=3a=3aFileList/i/include.md)
- [is_a?](../method/Rake=3a=3aFileList/i/is_a=3f.md)
- [kind_of?](../method/Rake=3a=3aFileList/i/kind_of=3f.md)
- [pathmap](../method/Rake=3a=3aFileList/i/pathmap.md)
- [resolve](../method/Rake=3a=3aFileList/i/resolve.md)
- [sub](../method/Rake=3a=3aFileList/i/sub.md)
- [sub!](../method/Rake=3a=3aFileList/i/sub=21.md)
- [to_a](../method/Rake=3a=3aFileList/i/to_a.md)
- [to_ary](../method/Rake=3a=3aFileList/i/to_ary.md)
- [to_s](../method/Rake=3a=3aFileList/i/to_s.md)

## Constants

- [ARRAY_METHODS](../method/Rake=3a=3aFileList/c/ARRAY_METHODS.md)
- [DEFAULT_IGNORE_PATTERNS](../method/Rake=3a=3aFileList/c/DEFAULT_IGNORE_PATTERNS.md)
- [DEFAULT_IGNORE_PROCS](../method/Rake=3a=3aFileList/c/DEFAULT_IGNORE_PROCS.md)
- [DELEGATING_METHODS](../method/Rake=3a=3aFileList/c/DELEGATING_METHODS.md)
- [MUST_DEFINE](../method/Rake=3a=3aFileList/c/MUST_DEFINE.md)
- [MUST_NOT_DEFINE](../method/Rake=3a=3aFileList/c/MUST_NOT_DEFINE.md)
- [SPECIAL_RETURN](../method/Rake=3a=3aFileList/c/SPECIAL_RETURN.md)

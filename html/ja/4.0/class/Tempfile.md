# class Tempfile < Delegator

テンポラリファイルを操作するためのクラスです。

- テンポラリファイルを作成します。
   ファイルは "w+" モードで "basename.pid.n" という名前になります。
- Tempfile オブジェクトは[File](../class/File.md)クラスへのDelegatorとして定義されており、[File](../class/File.md)クラスのオブジェクトと同じように使うことができます。
- Tempfile#close(true) により、作成したテンポラリファイルは削除されます。
- スクリプトが終了するときにも削除されます。
- [Tempfile#open](../method/Tempfile/i/open.md)により、テンポラリファイルを再オープンできます。
- テンポラリファイルのモードは 0600 です。

## Class Methods

- [create](../method/Tempfile/s/create.md)
- [new](../method/Tempfile/s/new.md)
- [open](../method/Tempfile/s/open.md)

## Instance Methods

- [close](../method/Tempfile/i/close.md)
- [close!](../method/Tempfile/i/close=21.md)
- [delete](../method/Tempfile/i/delete.md)
- [unlink](../method/Tempfile/i/unlink.md)
- [length](../method/Tempfile/i/length.md)
- [size](../method/Tempfile/i/size.md)
- [open](../method/Tempfile/i/open.md)
- [path](../method/Tempfile/i/path.md)

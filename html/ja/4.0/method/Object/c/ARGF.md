# Object::ARGF

### const ARGF -> Object

引数 (なければ標準入力) で構成される仮想ファイル
(詳細は [ARGF](../../../class/ARGF.md)、[ARGF.class](../../../class/ARGF=2eclass.md) を参照)。

つまり [Kernel?.gets](../../../method/Kernel/m/gets.md) は [ARGF.class#gets](../../../method/ARGF=2eclass/i/gets.md) と同じ意味です。
[ARGF.class#file](../../../method/ARGF=2eclass/i/file.md) で現在読み込み中のファイルオブジェクトが、
[ARGF.class#filename](../../../method/ARGF=2eclass/i/filename.md) で現在読み込み中のファイル名が得られます。

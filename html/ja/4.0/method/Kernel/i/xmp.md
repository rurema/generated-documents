# Kernel#xmp

### def xmp(exps, bind = nil) -> XMP

引数 exps で指定されたRuby のソースコードとその実行結果を、標準出力に行ごとに交互に表示します。

- **param** `exps` -- 評価するRuby のソースコードを文字列で指定します。

- **param** `bind` -- [Binding](../../../class/Binding.md) オブジェクトを指定します。省略した場合は、最
            後に実行した [XMP#puts](../../../method/XMP/i/puts.md)、[Kernel#xmp](../../../method/Kernel/i/xmp.md) の
            [Binding](../../../class/Binding.md) を使用します。まだ何も実行していない場合は
            [Object::TOPLEVEL_BINDING](../../../method/Object/c/TOPLEVEL_BINDING.md) を使用します。

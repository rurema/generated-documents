# class PrettyPrint < Object

pretty printing アルゴリズムのためのクラスです。
改行の位置を探し、きれいなインデントを施します。

デフォルトでは、このクラスは文字列を扱います。
また、文字1バイトが出力幅の中で1カラムを占めると仮定しています。
しかし、以下のメソッドに対して適切な引数を与えることで、そうでない場合にも利用できます。
- [PrettyPrint.new](../method/PrettyPrint/s/new.md): 出力バッファ、空白の生成をするブロックや改行オブジェクトを設定できます。
- [PrettyPrint#text](../method/PrettyPrint/i/text.md): 幅を設定できます。
- [PrettyPrint#breakable](../method/PrettyPrint/i/breakable.md)
ですので、このクラスは以下のようなことにも応用が可能です。
- proportional font を使ったテキストの整形
- 出力幅とバイト数が異なるような多バイト文字
- 文字以外の整形

## Class Methods

- [format](../method/PrettyPrint/s/format.md)
- [new](../method/PrettyPrint/s/new.md)
- [singleline_format](../method/PrettyPrint/s/singleline_format.md)

## Instance Methods

- [breakable](../method/PrettyPrint/i/breakable.md)
- [flush](../method/PrettyPrint/i/flush.md)
- [genspace](../method/PrettyPrint/i/genspace.md)
- [group](../method/PrettyPrint/i/group.md)
- [indent](../method/PrettyPrint/i/indent.md)
- [maxwidth](../method/PrettyPrint/i/maxwidth.md)
- [nest](../method/PrettyPrint/i/nest.md)
- [newline](../method/PrettyPrint/i/newline.md)
- [output](../method/PrettyPrint/i/output.md)
- [text](../method/PrettyPrint/i/text.md)

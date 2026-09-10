# IO#pressed?

### def pressed?(key) -> bool

key で指定したキーが押されているかどうかを返します。

このメソッドは Windows でのみ使用できます。

- **param** `key` -- 調べたいキーを表す仮想キーコード(整数)か、その名前を
           "VK_" 接頭辞を除いた文字列またはシンボルで指定します。
- **raise** `ArgumentError` -- key が文字列またはシンボルで、対応する仮想キーコードが
           見つからない場合に発生します。
- **raise** `NotImplementedError` -- Windows 以外の環境で発生します。

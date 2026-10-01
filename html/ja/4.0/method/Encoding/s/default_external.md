# Encoding.default_external

### def Encoding.default_external -> Encoding

既定の外部エンコーディングを返します。

標準入出力、コマンドライン引数、open で開くファイルなどで、外部エンコーディングが指定されていない場合の既定値として利用されます。

Rubyはロケールまたは -E オプションに従って default_external を決定します。ロケールの確認・設定方法については各システムのマニュアルを参照してください。

-E オプションを指定していない場合は、WindowsではUTF-8、その他のOSではロケールに従って default_external を決定します。

default_external は必ず設定されます。locale charmap 名を取得できない環境では US-ASCII が、[Encoding.locale_charmap](../../../method/Encoding/s/locale_charmap.md) の返す名前が Ruby の扱えないエンコーディングの場合には UTF-8 が、default_external に設定されます。

- **SEE** [spec/rubycmd](../../../doc/spec=2frubycmd.md) [man:locale(1)], [Encoding.locale_charmap](../../../method/Encoding/s/locale_charmap.md) [Encoding.default_internal](../../../method/Encoding/s/default_internal.md)

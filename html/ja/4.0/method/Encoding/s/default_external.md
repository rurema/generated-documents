# Encoding.default_external

### def Encoding.default_external -> Encoding

既定の外部エンコーディングを返します。

標準入出力、コマンドライン引数、open で開くファイルなどで、外部エンコーディングが指定されていない場合の既定値として利用されます。

Rubyはロケールまたは -E オプションに従って default_external を決定します。ロケールの確認・設定方法については各システムのマニュアルを参照してください。

-E オプションを指定していない場合は、WindowsではUTF-8、その他のOSではロケールに従って default_external を決定します。

default_external は必ず設定されます。[Encoding.locale_charmap](../../../method/Encoding/s/locale_charmap.md) が nil を返す場合には US-ASCII が、ロケールにRubyが扱えないエンコーディングが指定されている場合には ASCII-8BIT が、default_external に設定されます。

- **SEE** [spec/rubycmd](../../../doc/spec=2frubycmd.md) [man:locale(1)], [Encoding.locale_charmap](../../../method/Encoding/s/locale_charmap.md) [Encoding.default_internal](../../../method/Encoding/s/default_internal.md)

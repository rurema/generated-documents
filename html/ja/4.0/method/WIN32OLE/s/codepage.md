# WIN32OLE.codepage

### def WIN32OLE.codepage -> Integer

WIN32OLEがOLEオートメーションのインターフェイスに利用するコードページを取得します。

OLEオートメーションに利用する文字列はUnicodeでエンコードします。
WIN32OLEはここで示されたコードページを利用してRubyのStringとUnicodeの相互変換を行います。

ロード時の既定値はEncoding.default_internal、または
Encoding.default_internalがnilの場合はEncoding.default_externalによって求めたエンコーディングに対応するコードページです。もし、該当するコードページが見つからない場合は、[WIN32OLE::CP_ACP](../../../method/WIN32OLE/c/CP_ACP.md)を利用します。

- **return** -- WIN32OLEがオートメーション呼び出しの文字列変換に利用するコード
        ページを返します。

```ruby
p WIN32OLE.codepage # => 932 （日本語Windowsの既定値）
```

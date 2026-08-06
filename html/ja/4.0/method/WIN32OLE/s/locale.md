# WIN32OLE.locale

### def WIN32OLE.locale -> Integer

WIN32OLEがオートメーション呼び出し時に設定するロケール識別子(LCID)を取得します。

OLEオートメーションでは、UNIXで利用される"ja_JP"などの国名と言語名を「_」で接続した文字列ではなく、32ビット整数で示します。32ビットの内訳は上位
16ビットが予約領域で0、下位16ビットが言語ID(LANGID）です。LANGIDは、0〜
9ビットでプライマリ言語ID、10〜15ビットでサブ言語IDを示します。

ロード時の既定値は[WIN32OLE::LOCALE_SYSTEM_DEFAULT](../../../method/WIN32OLE/c/LOCALE_SYSTEM_DEFAULT.md)です。

- **return** -- WIN32OLEがオートメーション呼び出し時に設定するロケール識別子
        (LCID)を返します。

```ruby
lcid = WIN32OLE.locale
```

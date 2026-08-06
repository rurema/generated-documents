# WEBrick::Cookie.parse_set_cookies

### def WEBrick::Cookie.parse_set_cookies(str)    -> [WEBrick::Cookie]

サーバから送られてくる Set-Cookie ヘッダの値 str をパースし、新しく [WEBrick::Cookie](../../../class/WEBrick=3a=3aCookie.md) オブジェクトの配列を生成し返します。

- **param** `str` -- Set-Cookie ヘッダの値を文字列で指定します。

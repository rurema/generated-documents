# OpenSSL::Config.parse_config

### def OpenSSL::Config.parse_config(io) -> {String => {String => String}}

io から設定データを読み込んでパースし、その内容全体を Hash として返します。

返り値はセクション名をキーとし、それぞれのセクション内のキーと値の組を表す Hash を値とする Hash です。

- **param** `io` -- 設定データ(文字列または File などの IO オブジェクト)

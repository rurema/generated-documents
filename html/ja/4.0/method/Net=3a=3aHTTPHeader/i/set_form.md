# Net::HTTPHeader#set_form

### def set_form(params, enctype = 'application/x-www-form-urlencoded', formopt = {}) -> ()

`POST` や `PUT` リクエストで使うフォームのデータを設定します。

params は配列またはハッシュで指定します。ハッシュの場合は各エントリがフィールドの名前と値の組を表し、値には nil、文字列、(enctype に `'multipart/form-data'` を指定した場合のみ) 読み込み用に開かれた IO ストリームを指定できます。配列の場合は各要素が `[名前]`、`[名前, 値]`、あるいは (enctype が `'multipart/form-data'` の場合) `[名前, IO ストリーム]` や `[名前, IO ストリーム, オプションのハッシュ]` という形のサブ配列です。

enctype には `Content-Type:` ヘッダフィールドに設定する値を指定します。`'application/x-www-form-urlencoded'` (デフォルト) か `'multipart/form-data'` のいずれかでなければなりません。

formopt は enctype が `'multipart/form-data'` のときだけ有効なオプションのハッシュで、`:boundary` (マルチパートメッセージの境界文字列) と `:charset` (フォームの文字コード) を指定できます。

このメソッドを呼ぶと、実際にサーバに送るボディの内容はリクエスト送信時まで生成されないため、呼び出し直後は [Net::HTTPGenericRequest#body](../../../method/Net=3a=3aHTTPGenericRequest/i/body.md) は nil のままです。

- **param** `params` -- フォームのデータを配列またはハッシュで指定します。
- **param** `enctype` -- `Content-Type:` ヘッダフィールドに設定する値を指定します。
- **param** `formopt` -- enctype が `'multipart/form-data'` のときのオプションです。
- **raise** `ArgumentError` -- enctype に `'application/x-www-form-urlencoded'`、`'multipart/form-data'` 以外を指定すると発生します。

```ruby title="例"
require 'net/http'

uri = URI('http://www.example.com/index.html')
req = Net::HTTP::Post.new(uri)
req.set_form([['q', 'ruby'], ['lang', 'en']])
p req.content_type # => "application/x-www-form-urlencoded"
```

- **SEE** [Net::HTTPHeader#set_form_data](../../../method/Net=3a=3aHTTPHeader/i/set_form_data.md)

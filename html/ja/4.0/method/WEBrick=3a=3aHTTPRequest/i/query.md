# WEBrick::HTTPRequest#query

### def query    -> Hash

リクエストのクエリーあるいはクライアントがフォームへ入力した値を表すハッシュを返します。

ハッシュのキーも値も unescape されています。ただし multipart/form-data なフォームデータの場合にはユーザが content-transfer-encoding ヘッダを見て適切に処理する必要があります。

ハッシュの値は正確には文字列ではなく String クラスのサブクラスである [WEBrick::HTTPUtils::FormData](../../../class/WEBrick=3a=3aHTTPUtils=3a=3aFormData.md)
クラスのインスタンスです。

multipart/form-data なフォームデータであってもサイズの制限なく、通常のフォームデータと同じように扱われることに注意してください。クライアントからの入力によっては巨大な文字列が生成されてしまいます。

```ruby title="例"
h = req.query
p h['q']                       #=>  "ruby rails session"  
p h['upfile']['content-type']  #=>  "plain/text"
p h['upfile'].filename         #=>  "my_file.txt"
p h['upfile']                  #=>  "hoge hoge hoge"
```

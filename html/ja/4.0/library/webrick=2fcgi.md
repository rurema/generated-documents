# library webrick/cgi

一般の CGI 環境で [webrick](../library/webrick.md) ライブラリのサーブレットと同じように CGI スクリプトを書くためのライブラリです。サーバが WEBrick でなくても使うことが出来ます。

### 使い方

WEBrick のサーブレットを作成するのと同じように、[WEBrick::CGI](../class/WEBrick=3a=3aCGI.md) のサブクラスでメソッド
do_GET や do_POST を定義することによって CGI スクリプトを書きます。

スクリプトの最後で [WEBrick::CGI#start](../method/WEBrick=3a=3aCGI/i/start.md) メソッドを呼ぶ必要があります。
WEBrick::CGI#start メソッドは service メソッドを呼び出し、service メソッドはリクエストに応じて
do_XXX メソッドを呼び出します。このようにしてスクリプトは実行されます。

```ruby title="例"
#!/usr/local/bin/ruby
require 'webrick/cgi'

class MyCGI < WEBrick::CGI
  def do_GET(req, res)
    res["content-type"] = "text/plain"
    ret = "hoge\n"
    res.body = ret
  end
end
 
MyCGI.new.start()
```

#### do_XXX メソッド

do_XXX メソッドの XXX には GET, HEAD, POST, PUT, DELETE, OPTIONS が使用できます。

[WEBrick::CGI](../class/WEBrick=3a=3aCGI.md) のサブクラスで定義された do_XXX メソッドは [WEBrick::CGI#service](../method/WEBrick=3a=3aCGI/i/service.md) メソッドから HTTP のリクエストに応じて自動的に呼び出されます。
なので [WEBrick::CGI](../class/WEBrick=3a=3aCGI.md) のサブクラスはこれらのメソッドを適切に実装しなければなりません。
これらのメソッドの返り値は特に規定されていません。

[WEBrick::CGI](../class/WEBrick=3a=3aCGI.md) のサブクラスでは、クライアントが使う可能性のある RFC で定義された HTTP のメソッドはすべて実装する必要があります。
クライアントからのリクエストに使われないと分かっているメソッドは実装しなくてもかまいません。
実装されていない HTTP メソッドであった場合、[WEBrick::CGI#service](../method/WEBrick=3a=3aCGI/i/service.md) メソッドが例外を発生させます。

do_XXX メソッドが呼ばれた時点では、クライアントからのリクエストに含まれる Entity Body の読み込みはまだ行われていません。[WEBrick::HTTPRequest#query](../method/WEBrick=3a=3aHTTPRequest/i/query.md), [WEBrick::HTTPRequest#body](../method/WEBrick=3a=3aHTTPRequest/i/body.md) などのメソッドが読ばれた時点で読み込みが行われます。クライアントから巨大なデータが送られてくることを考慮してユーザはプログラミングを行うべきです。

do_XXX メソッドには二つの引数があります。
第一引数は、クライアントからのリクエストを表す [WEBrick::HTTPRequest](../class/WEBrick=3a=3aHTTPRequest.md) オブジェクトです。
第二引数は、クライアントへのレスポンスを表す [WEBrick::HTTPResponse](../class/WEBrick=3a=3aHTTPResponse.md) オブジェクトです。

#### フォームフィールドの値を得る

フォームフィールドの値は [WEBrick::HTTPRequest#query](../method/WEBrick=3a=3aHTTPRequest/i/query.md) メソッドが返す Hash オブジェクトに収納されています。

```ruby
require "webrick/cgi"
class MyCGI < WEBrick::CGI
  def do_GET(req, res)
    p req.query             #=> Hash を返します。
    req.query['q']          
    req.query['num']       
  end
end
MyCGI.new.start()
```

同じ名前のフィールドが複数ある場合、list メソッドや each_data メソッドを使います。

```ruby
require "webrick/cgi"
class MyCGI < WEBrick::CGI
  def do_GET(req, res)
    p req.query['q'].list   #=> フォームの値を保持した文字列の配列を返します。
  end
end
MyCGI.new.start()
```

query メソッドが返す Hash オブジェクトのキーと値のうち値は [WEBrick::HTTPUtils::FormData](../class/WEBrick=3a=3aHTTPUtils=3a=3aFormData.md) クラスのインスタンスになります。FormData クラスは String クラスのサブクラスです。

#### マルチパートフィールドの値を取得する（ファイル送信）

```ruby
require "webrick/cgi"
class MyCGI < WEBrick::CGI
  def do_GET(req, res)
    d = req.query['field_name']   #=> FormData クラスのインスタンス
    p d.name                      #=> "field_name"
    p d.filename                  #=> もしあればファイル名を返す。
    p d['content-type']           #=> ヘッダの値は [] メソッドで取得する
    p d                           #=> 送られてきたファイルの中身
  end
end
MyCGI.new.start()
```

#### クライアントにクッキーを渡す

```ruby
require "webrick/cgi"
class MyCGI < WEBrick::CGI
  def do_GET(req, res)
    c1 = WEBrick::Cookie.new("name1", "val1")
    c1.expires = Time.now + 30
    res.cookies << c1
     
    c2 = WEBrick::Cookie.new("name2", "val2")
    c2.expires = Time.now + 30
    res.cookies << c2
  end
end
MyCGI.new.start()
```

#### クライアントからクッキーを得る

```ruby
require "webrick/cgi"
class MyCGI < WEBrick::CGI
  def do_GET(req, res)
    p req.cookies                                 #=> WEBrick::Cookie オブジェクトの配列
    c = req.cookies.find{|c| c.name == "name1" }  #=> WEBrick::Cookie オブジェクト
  end
end
MyCGI.new.start()
```

#### CGI に関連する環境変数の値を取得する

CGI に関連する環境変数の値は直接 ENV から得る他に、
WEBrick::HTTPRequest オブジェクトの各メソッドから得ることができます。

```ruby
require "webrick/cgi"
class MyCGI < WEBrick::CGI
  def do_GET(req, res)
    req.content_length
    req.content_type
    req.path_info
    req.query_string
    req.peeraddr
    req.host
    req.user
    req.request_method
    req.script_name
    req.port
  end
end
MyCGI.new.start()
```

### リンク

- [rfc:3875]

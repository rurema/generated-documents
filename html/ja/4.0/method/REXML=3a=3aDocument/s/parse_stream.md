# REXML::Document.parse_stream

### def REXML::Document.parse_stream(source, listener) -> ()

XML文書を source から読み込み、パースした結果を
listener にコールバックで伝えます。

このメソッドは

```ruby
Parsers::StreamParser.new( source, listener ).parse
```

と同じ挙動をします。

コールバックの詳しい仕組みなどについては [REXML::Parsers::StreamParser](../../../class/REXML=3a=3aParsers=3a=3aStreamParser.md)
および [REXML::StreamListener](../../../class/REXML=3a=3aStreamListener.md) を参照してください。

- **param** `source` -- 入力(文字列、IO、IO互換オブジェクト(StringIOなど))
- **param** `listener` -- コールバックオブジェクト

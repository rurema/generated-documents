# REXML::Parsers::SAX2Parser#add_listener

### def add_listener(listener) -> ()
{: since=""}

パーサのイベントを受け取るオブジェクト `listener` を登録します。

[REXML::Parsers::SAX2Parser#listen](../../../method/REXML=3a=3aParsers=3a=3aSAX2Parser/i/listen.md) で登録するコールバックとは別のものです。[REXML::Parsers::SAX2Parser#parse](../../../method/REXML=3a=3aParsers=3a=3aSAX2Parser/i/parse.md) でパースしている間、パーサが XML を読み進めてイベントが発生するたびに `listener.receive(event)` が呼び出されます。

`event` は、先頭がイベントの種類を表すシンボルで、その後にパラメータが続く配列です。イベントの種類は [rexml/parsers/pullparser#event_type](../../../library/rexml=2fparsers=2fpullparser.md#event_type) に挙げたものと同じですが、text のパラメータは正規化文字列だけです。また、文書の終わりで `[:end_document]` が通知されます。

複数の `listener` を登録できます。

- **param** `listener` -- `receive` メソッドを持つオブジェクト
- **SEE** [rexml/validation/relaxng](../../../library/rexml=2fvalidation=2frelaxng.md)

```ruby title="例"
require 'rexml/parsers/sax2parser'

class EventPrinter
  def receive(event)
    p event
  end
end

parser = REXML::Parsers::SAX2Parser.new("<a><b>text</b></a>")
parser.add_listener(EventPrinter.new)
parser.parse
# >> [:start_element, "a", {}]
# >> [:start_element, "b", {}]
# >> [:text, "text"]
# >> [:end_element, "b"]
# >> [:end_element, "a"]
# >> [:end_document]
```

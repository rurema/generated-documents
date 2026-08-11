# REXML::Parsers::SAX2Parser#parse

### def parse -> ()

[REXML::Parsers::SAX2Parser.new](../../../method/REXML=3a=3aParsers=3a=3aSAX2Parser/s/new.md) で指定した XML をパースし、その結果によって [REXML::Parsers::SAX2Parser#listen](../../../method/REXML=3a=3aParsers=3a=3aSAX2Parser/i/listen.md) で指定したコールバックを呼び出します。

- **raise** `REXML::ParseException` -- XML文書のパースに失敗した場合に発生します
- **raise** `REXML::UndefinedNamespaceException` -- XML文書のパース中に、定義されていない名前空間が現れた場合に発生します

# REXML::Parsers::StreamParser#parse

### def parse -> ()

入力をパースします。

このメソッドの中からコールバックが呼び出されます。

- **raise** `REXML::ParseException` -- XML文書のパースに失敗した場合に発生します
- **raise** `REXML::UndefinedNamespaceException` -- XML文書のパース中に、定義されていない名前空間が現れた場合に発生します

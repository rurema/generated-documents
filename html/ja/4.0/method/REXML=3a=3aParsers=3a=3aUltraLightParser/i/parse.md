# REXML::Parsers::UltraLightParser#parse

### def parse -> Array

XML 文書のパース結果を配列による木で返します。

返される木構造配列については [rexml/parsers/ultralightparser#nodes](../../../library/rexml=2fparsers=2fultralightparser.md#nodes)
を参照してください。

- **raise** `REXML::ParseException` -- XML文書のパースに失敗した場合に発生します
- **raise** `REXML::UndefinedNamespaceException` -- XML文書のパース中に、定義されていない名前空間が現れた場合に発生します

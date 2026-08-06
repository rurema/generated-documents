# library time

組み込みの [Time](../class/Time.md) クラスを拡張します。
日時を表す文字列をパースして [Time](../class/Time.md) オブジェクトに変換したり、逆に [Time](../class/Time.md) オブジェクトを RFC などで定められた文字列に変換する機能を提供します。

- date-time は [RFC:2822] で定義されています。
- HTTP-date は [RFC:2616] で定義されています。
- dateTime は XML Schema Part 2: Datatypes (ISO 8601) で定義されています。
- 文字列から [Time](../class/Time.md) オブジェクトへの変換では [Date._parse](../method/Date/s/_parse.md) により様々な形式を扱えます。

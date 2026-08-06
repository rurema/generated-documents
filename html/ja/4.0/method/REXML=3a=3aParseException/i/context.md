# REXML::ParseException#context

### def context -> [Integer, Integer, Integer]

パースエラーが起きた(XML上の)場所を返します。

要素3個の配列で、

```text
[position, lineno, line]
```

という形で返します。
position, line は
[REXML::ParseException#position](../../../method/REXML=3a=3aParseException/i/position.md)
[REXML::ParseException#line](../../../method/REXML=3a=3aParseException/i/line.md)
と同じ値です。
lineno は [IO#lineno](../../../method/IO/i/lineno.md) が返す意味での行数です。
通常は line と同じ値です。

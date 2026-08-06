# Prism::Location#adjoin

### def adjoin(string) -> Prism::Location

範囲の直後に続くソースコードが string と一致する場合に、その分だけ範囲を伸ばした新しい `Prism::Location` を返します。

- **param** `string` -- 取り込む文字列
- **raise** `RuntimeError` -- 範囲の直後が string と一致しない場合に
  発生します。

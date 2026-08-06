# REXML::Elements#collect

### def collect(xpath = nil) {|element| .. } -> [object]

[Enumerable#collect](../../../method/Enumerable/i/collect.md) と同様、各子要素に対しブロックを呼び出し、その返り値の配列を返します。

xpath を指定した場合は、その XPath 文字列にマッチする要素に対し同様の操作をします。

- **param** `xpath` -- XPath文字列
- **SEE** [REXML::Elements#each](../../../method/REXML=3a=3aElements/i/each.md)

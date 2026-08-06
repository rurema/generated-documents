# REXML::Elements#inject

### def inject(xpath = nil, initial = nil) {|element| ... } -> object

[Enumerable#inject](../../../method/Enumerable/i/inject.md) と同様、各子要素に対し畳み込みをします。

xpath を指定した場合は、その XPath 文字列にマッチする要素に対し同様の操作をします。

- **param** `xpath` -- XPath文字列
- **SEE** [REXML::Elements#each](../../../method/REXML=3a=3aElements/i/each.md)

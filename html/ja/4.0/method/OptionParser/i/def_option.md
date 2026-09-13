# OptionParser#def_option

### def define(*params) {|v| ... } -> OptionParser::Switch
### def def_option(*params) {|v| ... } -> OptionParser::Switch

オプションを登録します。[OptionParser#on](../../../method/OptionParser/i/on.md) と同じ引数を受け付けますが、`self` ではなく登録した [OptionParser::Switch](../../../class/OptionParser=3a=3aSwitch.md) オブジェクトを返します。

- **param** `params` -- [OptionParser#on](../../../method/OptionParser/i/on.md) と同じです。
- **return** -- 登録した [OptionParser::Switch](../../../class/OptionParser=3a=3aSwitch.md) オブジェクトを返します。

- **SEE** [OptionParser#on](../../../method/OptionParser/i/on.md)

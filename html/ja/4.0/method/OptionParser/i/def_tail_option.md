# OptionParser#def_tail_option

### def define_tail(*params) {|v| ... } -> OptionParser::Switch
### def def_tail_option(*params) {|v| ... } -> OptionParser::Switch

オプションを、サマリの末尾に表示される位置に登録します。[OptionParser#on_tail](../../../method/OptionParser/i/on_tail.md) と同じ引数を受け付けますが、`self` ではなく登録した [OptionParser::Switch](../../../class/OptionParser=3a=3aSwitch.md) オブジェクトを返します。

- **param** `params` -- [OptionParser#on_tail](../../../method/OptionParser/i/on_tail.md) と同じです。
- **return** -- 登録した [OptionParser::Switch](../../../class/OptionParser=3a=3aSwitch.md) オブジェクトを返します。

- **SEE** [OptionParser#on_tail](../../../method/OptionParser/i/on_tail.md)

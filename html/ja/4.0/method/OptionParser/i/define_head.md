# OptionParser#define_head

### def define_head(*params) {|v| ... } -> OptionParser::Switch
{: since=""}
### def def_head_option(*params) {|v| ... } -> OptionParser::Switch
{: since=""}

オプションを、サマリの先頭に表示される位置に登録します。[OptionParser#on_head](../../../method/OptionParser/i/on_head.md) と同じ引数を受け付けますが、`self` ではなく登録した [OptionParser::Switch](../../../class/OptionParser=3a=3aSwitch.md) オブジェクトを返します。

- **param** `params` -- [OptionParser#on_head](../../../method/OptionParser/i/on_head.md) と同じです。
- **return** -- 登録した [OptionParser::Switch](../../../class/OptionParser=3a=3aSwitch.md) オブジェクトを返します。

- **SEE** [OptionParser#on_head](../../../method/OptionParser/i/on_head.md)

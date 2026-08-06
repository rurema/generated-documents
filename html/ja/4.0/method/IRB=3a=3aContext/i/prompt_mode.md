# IRB::Context#prompt_mode

### def prompt_mode -> Symbol

現在のプロンプトモードを [Symbol](../../../class/Symbol.md) で返します。

オリジナルのプロンプトモードを定義していた場合はそのモードを返します。
そうでない場合は、:DEFAULT、:CLASSIC、:SIMPLE、:INF_RUBY、:XMP、:NULL
のいずれかを返します。

定義済みのプロンプトモードの内容については、IRB.conf[:PROMPT][mode] を参照してください。

- **SEE** [IRB::Context#prompt_mode=](../../../method/IRB=3a=3aContext/i/prompt_mode=3d.md), [irb#customize_prompt](../../../library/irb.md#customize_prompt)

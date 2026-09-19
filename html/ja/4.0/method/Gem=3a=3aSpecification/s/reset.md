# Gem::Specification.reset

### def Gem::Specification.reset -> ()
{: since="1.9.3"}

既知の仕様書の一覧をリセットします。

リセットの前後で、`Gem` に登録された reset 前後のフック
(`Gem.pre_reset_hooks`・`Gem.post_reset_hooks`)を実行します。

- **SEE** [Gem::Specification.dirs=](../../../method/Gem=3a=3aSpecification/s/dirs=3d.md)

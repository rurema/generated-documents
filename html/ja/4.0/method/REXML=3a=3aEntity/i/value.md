# REXML::Entity#value

### def value -> String | nil

実体の値を返します。

パラメータ実体参照(parameter entity)のみが展開され、そうでない実体参照(general entity)は展開されていないような値が返されます。

外部実体(external entity)宣言の場合は nil を返します。

- **SEE** [REXML::Entity#unnormalized](../../../method/REXML=3a=3aEntity/i/unnormalized.md), [REXML::Entity#normalized](../../../method/REXML=3a=3aEntity/i/normalized.md)

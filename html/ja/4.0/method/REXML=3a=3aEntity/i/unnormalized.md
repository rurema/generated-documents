# REXML::Entity#unnormalized

### def unnormalized -> String | nil

非正規化された(unnormalized)実体の値を返します。

すなわち、self が属する DTD によってすべての実体参照(&ent; と %ent; の両方)
を展開した文字列を返します。

外部実体(external entity)宣言の場合は nil を返します。

- **SEE** [REXML::Entity#value](../../../method/REXML=3a=3aEntity/i/value.md), [REXML::Entity#normalized](../../../method/REXML=3a=3aEntity/i/normalized.md)

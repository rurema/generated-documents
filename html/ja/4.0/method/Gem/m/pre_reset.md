# Gem?.pre_reset

### module_function def pre_reset { ... } -> [Proc]
{: since="1.9.3"}

`Gem::Specification.reset` の実行前に呼び出すフックを登録します。

ブロックに引数は渡されません。

- **return** -- 登録済みのフック(`Proc`)の配列です。
- **SEE** [Gem?.pre_reset_hooks](../../../method/Gem/m/pre_reset_hooks.md), [Gem?.post_reset](../../../method/Gem/m/post_reset.md)

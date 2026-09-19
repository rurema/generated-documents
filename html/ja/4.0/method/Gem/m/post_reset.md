# Gem?.post_reset

### module_function def post_reset { ... } -> [Proc]
{: since="1.9.3"}

`Gem::Specification.reset` の実行後に呼び出すフックを登録します。

ブロックに引数は渡されません。

- **return** -- 登録済みのフック(`Proc`)の配列です。
- **SEE** [Gem?.post_reset_hooks](../../../method/Gem/m/post_reset_hooks.md), [Gem?.pre_reset](../../../method/Gem/m/pre_reset.md)

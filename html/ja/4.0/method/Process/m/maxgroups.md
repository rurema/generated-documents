# Process?.maxgroups

### module_function def maxgroups        -> Integer
### module_function def maxgroups=(num)

設定できる補助グループ ID の数を指定します。

実際に返される補助グループ ID の数よりも少ない値を設定していると、
[Process?.groups](../../../method/Process/m/groups.md) で例外が発生します。

- **param** `num` -- 整数を指定します。

- **raise** `NotImplementedError` -- メソッドが現在のプラットフォームで実装されていない場合に発生します。

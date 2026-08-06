# Process?.groups

### module_function def groups     -> [Integer]

補助グループ ID の配列を返します(実効グループ ID を含むかも知れません)。

返される配列の最大要素数は [Process?.maxgroups](../../../method/Process/m/maxgroups.md) です。

このメソッドは [man:getgroups(2)] の単純なラッパーです。
このことは以下の特徴がプラットフォームに依存することを意味します。

- 結果がソートされているかどうか
- 結果が実効グループ ID を含むかどうか
- グループ ID が重複している可能性があるかどうか

ソート済みで重複のないグループ ID の配列の取得は以下のようにできます:

```ruby
Process.groups.uniq.sort
```

- **raise** `Errno::EXXX` -- [Process?.maxgroups](../../../method/Process/m/maxgroups.md) が実際に返される補助グループ ID の
                   数よりも少ない値を設定していると発生します。

- **raise** `NotImplementedError` -- メソッドが現在のプラットフォームで実装されていない場合に発生します。

```ruby
p Process.groups #=> [27, 6, 10, 11]
```

- **SEE** [man:getgroups(2)]

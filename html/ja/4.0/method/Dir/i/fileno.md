# Dir#fileno

### def fileno -> Integer

self に関連づけられたファイル記述子を表す整数を返します。

```ruby title="例"
p Dir.open("..") { |d| d.fileno } # => 8
```

本メソッドでは POSIX 2008 で定義されている dirfd() 関数を使用します。

- **raise** `NotImplementedError` -- Windows などの dirfd() 関数が存在しないプラットフォームで発生します。
- **raise** `IOError` -- 既に自身が close している場合に発生します。

- **SEE** [IO#fileno](../../../method/IO/i/fileno.md)

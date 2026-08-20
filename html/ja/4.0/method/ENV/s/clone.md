# ENV.clone

### def ENV.clone(freeze: true) -> ()
{: since=""}

ENV オブジェクトの複製を作成して返します。

ENV は OS のプロセス全体で共有される環境変数を操作するラッパーオブジェクトなので、複製は有用ではありません。
そのため、Ruby 3.1 からは複製で環境変数を操作するときに deprecated 警告がでます。
さらに Ruby 3.2 からは複製自体ができなくなり、[TypeError](../../../class/TypeError.md) が発生します。

テスト実行中に環境変数を退避する用途には [ENV.to_h](../../../method/ENV/s/to_h.md) を使用してください。

```ruby
saved_env = ENV.to_h
# (テストなど)
ENV.replace(saved_env)
```

- **SEE** [Object#clone](../../../method/Object/i/clone.md)
- **SEE** [ENV.dup](../../../method/ENV/s/dup.md)

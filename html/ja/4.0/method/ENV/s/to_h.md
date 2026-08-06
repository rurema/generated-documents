# ENV.to_h

### def ENV.to_h -> Hash
### def ENV.to_h {|name, value| block } -> Hash

環境変数の名前をキーとし、対応する値をもつハッシュを返します。

ブロックを指定すると各ペアでブロックを呼び出し、その結果をペアとして使います。

```ruby title="ブロック付きの例"
ENV.to_h {|name, value| [name, value.size] }
```

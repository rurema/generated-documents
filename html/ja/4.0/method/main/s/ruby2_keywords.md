# main.ruby2_keywords

### def main.ruby2_keywords(method_name, ...) -> nil
{: since="2.7.0"}

トップレベルで定義したメソッドに、可変長引数(`*args`)で受けたキーワード引数を別のメソッド呼び出しへそのまま渡すためのフラグを設定します。

Ruby 2.7 より前との後方互換性のために用意されているメソッドです。
詳細は [Module#ruby2_keywords](../../../method/Module/i/ruby2_keywords.md) を参照してください。

- **param** `method_name` -- メソッド名を [String](../../../class/String.md) か [Symbol](../../../class/Symbol.md) で指定します。複数指定できます。

```ruby title="例"
def target(a, k: 0)
  [a, k]
end

def pass(*args)
  target(*args)
end
ruby2_keywords :pass

p pass(1, k: 2) # => [1, 2]
```

- **SEE** [Module#ruby2_keywords](../../../method/Module/i/ruby2_keywords.md), [Proc#ruby2_keywords](../../../method/Proc/i/ruby2_keywords.md), [Hash.ruby2_keywords_hash](../../../method/Hash/s/ruby2_keywords_hash.md)

# Object#to_a

### def to_a -> Array
{: nomethod}

オブジェクトを配列に変換した結果を返します。
デフォルトでは定義されていません。

説明のためここに記載してありますが、このメソッドは実際には Object クラスには定義されていません。
必要に応じてサブクラスで定義すべきものです。

```ruby
p( {'a'=>1}.to_a )  # [["a", 1]]
p ['array'].to_a    # ["array"]
p nil.to_a          # []
```

- **SEE** [Object#to_ary](../../../method/Object/i/to_ary.md),[Kernel?.Array](../../../method/Kernel/m/Array.md)

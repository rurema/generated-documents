# Object#dup

### def dup -> object

オブジェクトの複製を作成して返します。

dup は、オブジェクトの内容をコピーします。
[Object#clone](../../../method/Object/i/clone.md) と異なり、freeze の状態や特異メソッドはコピーされません。

浅いコピー・複製の詳細は [Object#clone](../../../method/Object/i/clone.md) を参照してください。

```ruby
obj = "string"
def obj.fuga
end
obj.freeze

p(obj.equal?(obj))          #=> true
p(obj == obj)               #=> true
p(obj.frozen?)              #=> true
p(obj.respond_to?(:fuga))   #=> true

obj_d = obj.dup

p(obj.equal?(obj_d))        #=> false
p(obj == obj_d)             #=> true
p(obj_d.frozen?)            #=> false # clone と異なり freeze はコピーされない
p(obj_d.respond_to?(:fuga)) #=> false # 特異メソッドもコピーされない
```

- **SEE** [Object#initialize_copy](../../../method/Object/i/initialize_copy.md), [Object#initialize_dup](../../../method/Object/i/initialize_dup.md), [Object#clone](../../../method/Object/i/clone.md)

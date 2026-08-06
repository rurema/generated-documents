# Proc#arity

### def arity -> Integer

Proc オブジェクトが受け付ける引数の数を返します。

ただし、可変長引数を受け付ける場合、負の整数

```text
-(必要とされる引数の数 + 1)
```

を返します。

```ruby title="例"
p lambda{           }.arity # => 0
p lambda{||         }.arity # =>  0
p lambda{|x|        }.arity # =>  1
p lambda{|*x|       }.arity # => -1
p lambda{|x, y|     }.arity # =>  2
p lambda{|x, *y|    }.arity # => -2
p lambda{|(x, y)|   }.arity # =>  1
p lambda{|(x, y), z|}.arity # =>  2
```

- **SEE** [glossary#arity](../../../doc/glossary.md#arity)

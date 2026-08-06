# void_expr

### static void void_expr(NODE *node)

node の表すプログラムの中に値を使わないと意味のない式があれば警告を出す。

```ruby
# 警告が出る例
lvar = 1
lvar      # 無駄
p lvar
```

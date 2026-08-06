# void_stmts

### static void void_stmts(NODE *node)

node の表すプログラムの中に値を使わないと意味のない式があれば警告を出す。

```ruby
# 警告が出る例
lvar = 1
lvar      # 無駄
p lvar
```

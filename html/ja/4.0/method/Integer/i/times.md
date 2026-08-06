# Integer#times

### def times {|n| ... } -> self
### def times -> Enumerator

`self` 回だけ繰り返します。
`self` が正の整数でない場合は何もしません。

またブロックパラメータには `0` から `self - 1` までの数値が渡されます。

```ruby
3.times { puts "Hello, World!" }  # Hello, World! と3行続いて表示される。
0.times { puts "Hello, World!" }  # 何も表示されない。
5.times {|n| print n }            # 01234 と表示される。
```

- **SEE** [Integer#upto](../../../method/Integer/i/upto.md), [Integer#downto](../../../method/Integer/i/downto.md), [Numeric#step](../../../method/Numeric/i/step.md)

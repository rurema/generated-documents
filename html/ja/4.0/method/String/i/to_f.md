# String#to_f

### def to_f -> Float

文字列を 10 進数表現と解釈して、浮動小数点数 [Float](../../../class/Float.md) に変換します。

浮動小数点数とみなせなくなるところまでを変換対象とします。
途中に変換できないような文字列がある場合、それより先の文字列は無視されます。

```ruby
p "-10".to_f   # => -10.0
p "10e2".to_f  # => 1000.0
p "1e-2".to_f  # => 0.01
p ".1".to_f    # => 0.1

p "1_0_0".to_f # => 100.0  # 数値リテラルと同じように区切りに _ を使える
p " \n10".to_f # => 10.0   # 先頭の空白・改行は無視される
p "7xa.5".to_f # => 7.0
```

"1." のように小数点以下を省略した表記も浮動小数点数として扱います。
このため指数付きの表記では Ruby 3.3 以前と結果が変わることがあります
(3.3 以前は "1." で解釈を打ち切っていましたが、3.4 以降は指数まで解釈します)。

```ruby
p "1.".to_f     # => 1.0
p "1.e2".to_f   # => 100.0  # Ruby 3.3 以前は 1.0
```


以下の例は、先頭に浮動小数点数とみなせるものがないため、0.0 を返します。
変換対象が空文字列のケースでも、0.0 を返します。

```ruby
p "".to_f      # => 0.0
p "nan".to_f   # => 0.0
p "INF".to_f   # => 0.0
p "-Inf".to_f  # => 0.0
```

変換後の [Float](../../../class/Float.md) が有限の値を取れないときは、[Float::INFINITY](../../../method/Float/c/INFINITY.md) を用います。
このとき、全ての警告を有効にすると、警告が表示されます。

```ruby
#!ruby -W2

p ("10" * 1000).to_f   # => Infinity
# warning: Float 10101010101010101010... out of range
```

なお、このメソッドとは逆に、数値を文字列に変換するには
[Kernel?.sprintf](../../../method/Kernel/m/sprintf.md), [String#%](../../../method/String/i/=25.md), [Integer#to_s](../../../method/Integer/i/to_s.md)
を使用します。

- **SEE** [String#hex](../../../method/String/i/hex.md), [String#oct](../../../method/String/i/oct.md), [String#to_i](../../../method/String/i/to_i.md),
     [Kernel?.Integer](../../../method/Kernel/m/Integer.md), [Kernel?.Float](../../../method/Kernel/m/Float.md)

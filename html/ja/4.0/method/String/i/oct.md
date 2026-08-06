# String#oct

### def oct -> Integer

文字列を 8 進文字列であると解釈して、整数に変換します。

```ruby title="例"
p "10".oct  # => 8
p "010".oct # => 8
p "8".oct   # => 0
```

oct は文字列の接頭辞 ("0", "0b", "0B", "0x", "0X") に応じて
8 進以外の変換も行います。

```ruby title="例"
p "0b10".oct  # => 2
p "10".oct    # => 8
p "010".oct   # => 8
p "0x10".oct  # => 16
```

整数とみなせない文字があればそこまでを変換対象とします。
変換対象が空文字列であれば 0 を返します。

符号や _ が含まれる場合も変換対象になります。

```ruby title="例"
p "-010".oct     # => -8
p "-0x10".oct    # => -16
p "-0b10".oct    # => -2

p "1_0_1x".oct   # => 65
```

- **SEE** [String#hex](../../../method/String/i/hex.md), [String#to_i](../../../method/String/i/to_i.md), [String#to_f](../../../method/String/i/to_f.md),
     [Kernel?.Integer](../../../method/Kernel/m/Integer.md), [Kernel?.Float](../../../method/Kernel/m/Float.md)

逆に、数値を文字列に変換するには[Kernel?.sprintf](../../../method/Kernel/m/sprintf.md),
[String#%](../../../method/String/i/=25.md), [Integer#to_s](../../../method/Integer/i/to_s.md) を使用します。

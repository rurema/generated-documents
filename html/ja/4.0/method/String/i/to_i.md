# String#to_i

### def to_i(base = 10) -> Integer

文字列を 10 進数表現された整数であると解釈して、整数に変換します。

```ruby title="例"
p " 10".to_i    # => 10
p "+10".to_i    # => 10
p "-10".to_i    # => -10

p "010".to_i    # => 10
p "-010".to_i   # => -10
```

整数とみなせない文字があればそこまでを変換対象とします。
変換対象が空文字列であれば 0 を返します。

```ruby title="例"
p "0x11".to_i   # => 0
p "".to_i       # => 0
```

基数を指定することでデフォルトの 10 進以外に 2 〜 36 進数表現へ変換できます。
それぞれ Ruby の整数リテラルで使用可能なプリフィクスは無視されます。
また、base に 0 を指定するとプリフィクスから基数を判断します。
認識できるプリフィクスは、
0b (2 進数)、0 (8 進数)、0o (8 進数)、0d (10 進数)、0x (16 進数) です。

0, 2 〜 36 以外の引数を指定した場合は例外 [ArgumentError](../../../class/ArgumentError.md) が発生します。

```ruby title="例"
p "01".to_i(2)    # => 1
p "0b1".to_i(2)   # => 1

p "07".to_i(8)    # => 7
p "0o7".to_i(8)   # => 7

p "1f".to_i(16)   # => 31
p "0x1f".to_i(16) # => 31

p "0b10".to_i(0)  # => 2
p "0o10".to_i(0)  # => 8
p "010".to_i(0)   # => 8
p "0d10".to_i(0)  # => 10
p "0x10".to_i(0)  # => 16
```

- **param** `base` --    進数を指定する整数。0 か、2〜36 の整数。
- **return** --        整数

このメソッドの逆に数値を文字列に変換するには、
[Kernel?.sprintf](../../../method/Kernel/m/sprintf.md), [String#%](../../../method/String/i/=25.md), [Integer#to_s](../../../method/Integer/i/to_s.md)
を使用します。

[String#hex](../../../method/String/i/hex.md), [String#oct](../../../method/String/i/oct.md), [String#to_f](../../../method/String/i/to_f.md),
[Kernel?.Integer](../../../method/Kernel/m/Integer.md), [Kernel?.Float](../../../method/Kernel/m/Float.md)
も参照してください。

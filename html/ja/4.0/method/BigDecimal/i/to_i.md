# BigDecimal#to_i

### def to_i   -> Integer
### def to_int -> Integer

self の小数点以下を切り捨てて整数に変換します。

- **raise** `FloatDomainError` -- self が無限大や NaN であった場合に発生します。

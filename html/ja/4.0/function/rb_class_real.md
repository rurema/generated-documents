# rb_class_real

### VALUE rb_class_real(VALUE cl)

特異クラスや化身クラス (T_ICLASS) を飛ばして cl のスーパークラスを辿り、Ruby レベルに露出してもよいクラスを返します。

```c title="例"
rb_class_real(RBASIC(klass)->super)
```

rb_obj_class(obj) は、obj のクラスを返す汎用の関数(Object#type と同じ)だが、obj が Qtrue などでない RBasic 構造のものであることがわかっているなら

```c
rb_class_real(RBASIC(obj)->klass)
```

でも良い。(が、やはり rb_obj_class(obj) を使う方が無難だろう)

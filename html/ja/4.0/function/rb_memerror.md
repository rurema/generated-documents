# rb_memerror

### void rb_memerror(void)

NoMemoryErrorをraiseする。
しかしraise自体にもメモリ容量を使うため、メモリが足りない状況ではその途中でまたメモリ不足になる可能性がある。そのためこの関数では再帰を検出した場合はraiseではなくexitするようになっている。

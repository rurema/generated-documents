# rb_str_set_len

### void rb_str_set_len(VALUE str, long len)

文字列 `str` の長さを `len` バイトに設定します。
主に、あらかじめ `rb_str_modify_expand` で領域を広げた文字列を縮めるために使います。
`len` は `str` の容量を超えてはいけません。
`len` バイトまでの内容は、現在の長さによらず保たれます。
`str` は [String](../class/String.md) でなければいけません。

```c title="使用例"
extern int fd;
VALUE str = rb_str_new_cstr("...");
ssize_t len;

rb_str_modify_expand(str, BUFSIZ);
len = recv(fd, RSTRING_PTR(str), BUFSIZ, 0);
if (len >= 0) {
    rb_str_set_len(str, len);
}
else {
    rb_sys_fail("recv(2)");
}
```

- **param** `str` -- 長さを設定する [String](../class/String.md) です。
- **param** `len` -- 新しい長さです。`str` の容量以下にします。
- **raise** `RuntimeError` -- `str` が `locktmp` されているとき。
- **raise** `FrozenError` -- `str` が凍結されているとき。

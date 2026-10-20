# rb_obj_respond_to

### int rb_obj_respond_to(VALUE obj, ID mid, int private_p)

`obj` がメソッド `mid` に応答するなら 1、そうでなければ 0 を返します。
`private_p` が真のときはプライベートメソッドも対象にします。

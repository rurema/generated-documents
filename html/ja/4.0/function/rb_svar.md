# rb_svar

### VALUE * rb_svar(int cnt)

現在の SCOPE でローカル変数IDが cnt である変数の領域へのポインタを返します。主に [m:$_] (cnt=0) と [m:$~] (cnt=1) にアクセスするために使われます。

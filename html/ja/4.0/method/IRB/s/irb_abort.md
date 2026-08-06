# IRB.irb_abort

### def IRB.irb_abort(irb, exception = Abort)

実行中の処理を中断します。必ず例外が発生するため、何も返しません。

- **param** `irb` -- 現在の [IRB::Irb](../../../class/IRB=3a=3aIrb.md) オブジェクトを指定します。

- **param** `exception` -- 発生させる例外を指定します。指定しなかった場合は
                 [IRB::Abort](../../../class/IRB=3a=3aAbort.md) が発生します。

- **raise** `exception` -- 引数 exception で指定した例外が発生します。

ユーザが直接使用するものではありません。

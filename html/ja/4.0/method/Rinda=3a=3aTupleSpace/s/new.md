# Rinda::TupleSpace.new

### def Rinda::TupleSpace.new(period = 60) -> Rinda::TupleSpace

[Rinda::TupleSpace](../../../class/Rinda=3a=3aTupleSpace.md) オブジェクトを生成します。

period で掃除用スレッドが動く周期を指定します。
このスレッドでは cancel されたタプルや expire(期限切れ、タイムアウト) されたタプルをタプルスペース内から取り除きます。

- **param** `period` -- cancel/expireされたタプルを取り除く周期を秒で指定します

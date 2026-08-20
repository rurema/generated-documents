# module DRb::DRbUndumped

このモジュールをインクルードしたクラスのインスタンスはネットワーク越しに参照渡しで渡されるようになります。
値渡し出来ないオブジェクトを [drb](../library/drb.md) と一緒に使う時に有用です。

また [`Marshal.dump(obj)`](../method/Marshal/m/dump.md) が必ず失敗するようになります。

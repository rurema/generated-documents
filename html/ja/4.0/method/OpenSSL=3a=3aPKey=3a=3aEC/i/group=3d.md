# OpenSSL::PKey::EC#group=

### def group=(gr)

鍵パラメータとなる群を表すオブジェクトを設定します。

通常このメソッドで値を変更することはありません。
よく考えて必要な場合のみ利用してください。

- **param** `gr` -- 設定する [OpenSSL::PKey::EC::Group](../../../class/OpenSSL=3a=3aPKey=3a=3aEC=3a=3aGroup.md) オブジェクト
- **raise** `OpenSSL::PKey::ECError` -- Group オブジェクトの設定に失敗した場合に発生します
- **SEE** [OpenSSL::PKey::EC#group](../../../method/OpenSSL=3a=3aPKey=3a=3aEC/i/group.md)

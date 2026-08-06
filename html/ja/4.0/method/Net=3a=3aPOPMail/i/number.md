# Net::POPMail#number

### def number -> Integer

メールに対して振られた、そのメールボックスで一意な番号を返します。

サーバに接続しなおすとこの番号は変化する場合があります。
メールごとに一意な識別子が必要なときは
[Net::POPMail#uidl](../../../method/Net=3a=3aPOPMail/i/uidl.md) を使ってください。

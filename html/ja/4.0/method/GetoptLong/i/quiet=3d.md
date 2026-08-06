# GetoptLong#quiet=

### def quiet=(flag)

flag が真なら、静粛 (quiet) モードが有効になります。

静粛モードが有効になっていると、レシーバのオブジェクトは、
[GetoptLong#get](../../../method/GetoptLong/i/get.md), [GetoptLong#get_option](../../../method/GetoptLong/i/get_option.md),
[GetoptLong#each](../../../method/GetoptLong/i/each.md), [GetoptLong#each_option](../../../method/GetoptLong/i/each_option.md) メソッドでエラーが発生しても、エラーメッセージを出力しません。初期値は、偽になっています。

- **param** `flag` -- 真または偽を指定します。

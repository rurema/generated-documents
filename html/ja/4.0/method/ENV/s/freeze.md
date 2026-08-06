# ENV.freeze

### def ENV.freeze -> ()
{: since="2.7.0"}

ENV.freeze は環境変数の変更を禁止できないため、[TypeError](../../../class/TypeError.md)を発生させます。

Ruby 2.7 で追加された挙動です。それより前のバージョンでは例外を発生させませんでした。

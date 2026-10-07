# REXML::Parsers::PullParser#add_listener

### def add_listener(listener) -> ()
{: since=""}

`listener` を登録しますが、登録した `listener` が呼び出されることはありません。

[REXML::Parsers::UltraLightParser#add_listener](../../../method/REXML=3a=3aParsers=3a=3aUltraLightParser/i/add_listener.md) などと違い、このメソッドで登録した `listener` にはイベントが通知されません。イベントを順に処理するには [REXML::Parsers::PullParser#pull](../../../method/REXML=3a=3aParsers=3a=3aPullParser/i/pull.md) や [REXML::Parsers::PullParser#each](../../../method/REXML=3a=3aParsers=3a=3aPullParser/i/each.md) を使ってください。

- **param** `listener` -- 登録するオブジェクト

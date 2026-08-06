# module WEBrick::AccessLog

[WEBrick::HTTPServer](../class/WEBrick=3a=3aHTTPServer.md) のアクセスログの形式を処理するために内部で使われるモジュールです。

アクセスログの形式は Apache の mod_log_config の形式に準拠しますが、HTTP ステータスコードを指定することは出来ません。最後のステータスを表す %>s は %s と同じように解釈されます。

- <http://httpd.apache.org/docs/mod/mod_log_config.html#formats>

```text
"%h %l %u %t \"%r\" %s %b"
"%{User-Agent}i"
```

指定できる形式は以下のとおりです。

- **`%a`**:
  リモート IP アドレス
- **`%b`**:
  レスポンスのバイト数。HTTP ヘッダは除く。CLF 書式。
  すなわち、1 バイトも送られなかったときは 0 ではなく、 '-' になる
- **`%{FOOBAR}e`**:
  環境変数 FOOBAR の内容
- **`%f`**:
  ファイル名
- **`%h`**:
  リモートホスト
- **`%{Foobar}i`**:
  サーバに送られたリクエストの Foobar:  ヘッダの内容
- **`%l`**:
  "-"
- **`%m`**:
  リクエストメソッド
- **`%{Foobar}n`**:
  req.attributes
- **`%{Foobar}o`**:
  応答の Foobar: ヘッダの内容
- **`%p`**:
  リクエストを扱っているサーバの正式なポート
- **`%q`**:
  クエリ文字列
- **`%r`**:
  リクエストの最初の行
- **`%s`**:
  ステータス。"%>s" はサポートしません。
- **`%t`**:
  リクエストを受付けた時刻。 CLF の時刻の書式 (標準の英語の書式)
- **`%{format}t`**:
  format で与えられた書式による時刻。format は [Time#strftime](../method/Time/i/strftime.md) の 書式である必要がある。
- **`%T`**:
  リクエストを扱うのにかかった時間、秒単位
- **`%u`**:
  リモートユーザ
- **`%U`**:
  リクエストされた URL パス。クエリ文字列は含まない
- **`%v`**:
  リクエストを扱っているサーバの正式な ServerName

## Module Functions

- [escape](../method/WEBrick=3a=3aAccessLog/m/escape.md)
- [format](../method/WEBrick=3a=3aAccessLog/m/format.md)
- [setup_params](../method/WEBrick=3a=3aAccessLog/m/setup_params.md)

## Constants

- [AGENT_LOG_FORMAT](../method/WEBrick=3a=3aAccessLog/c/AGENT_LOG_FORMAT.md)
- [CLF](../method/WEBrick=3a=3aAccessLog/c/CLF.md)
- [COMMON_LOG_FORMAT](../method/WEBrick=3a=3aAccessLog/c/COMMON_LOG_FORMAT.md)
- [CLF_TIME_FORMAT](../method/WEBrick=3a=3aAccessLog/c/CLF_TIME_FORMAT.md)
- [COMBINED_LOG_FORMAT](../method/WEBrick=3a=3aAccessLog/c/COMBINED_LOG_FORMAT.md)
- [REFERER_LOG_FORMAT](../method/WEBrick=3a=3aAccessLog/c/REFERER_LOG_FORMAT.md)

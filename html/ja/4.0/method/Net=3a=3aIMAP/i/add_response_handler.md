# Net::IMAP#add_response_handler

### def add_response_handler(handler) -> ()
### def add_response_handler(handler){|resp| ...} -> ()

レスポンスハンドラを追加します。

レスポンスハンドラはサーバから応答を受け取るごとに呼びだされます。ハンドラには
[Net::IMAP::TaggedResponse](../../../class/Net=3a=3aIMAP=3a=3aTaggedResponse.md) もしくは
[Net::IMAP::UntaggedResponse](../../../class/Net=3a=3aIMAP=3a=3aUntaggedResponse.md) オブジェクトが渡されます。

主にサーバからの非同期的なイベントを受け取るために用います。例えば EXISTS 応答を受け取る
(メールボックスに新たなメールが追加されたタイミングで発生します)
ためなどに用いられます。

レスポンスハンドラはメインのスレッドとは別のスレッドで呼びだされることに注意してください。

```ruby title="例"
imap.add_response_handler do |resp|
  p resp
end
```

- **param** `handler` -- 追加するハンドラ([Proc](../../../class/Proc.md) や [Method](../../../class/Method.md) オブジェクト)
- **SEE** [Net::IMAP#remove_response_handler](../../../method/Net=3a=3aIMAP/i/remove_response_handler.md)

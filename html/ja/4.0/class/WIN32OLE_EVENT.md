# class WIN32OLE_EVENT < Object

OLEオートメーションサーバからのイベント通知を制御するクラスです。

OLEオートメーションサーバによっては、サーバの処理の過程でクライアントがあらかじめ登録したメソッドを呼び出すものがあります。このサーバが登録したメソッドを呼び出す動作を「イベント」と呼びます。WIN32OLE_EVENTを利用すると、ブロックの形式でイベントを受け取るメソッドをサーバへ登録できます。

Ruby 3.2 から、このクラスは WIN32OLE の名前空間下に移動し、`WIN32OLE::Event`
として定義されるようになりました。トップレベル定数 `WIN32OLE_EVENT` は後方互換のためのエイリアスとして残っていますが、Ruby 3.4 以降は非推奨
(deprecated)です(`Warning[:deprecated]` が有効なら参照時に警告が表示されます)。

### サンプルコード

```ruby
ie = WIN32OLE.new('InternetExplorer.Application.1')
event = WIN32OLE_EVENT.new(ie, 'DWebBrowserEvents2')
b = false
event.on_event('DocumentComplete') do |disp, uri|
  disp.document.getElementsByTagName('a').each do |e|
    puts "#{e.innerHTML}=#{e.href}"   #=> ダウンロード=http://www.ruby-lang.org/ja/downloads/ など
  end
  disp.quit
  b = true
end
ie.Navigate2 'http://www.ruby-lang.org/ja/'
loop do
  break if b
  WIN32OLE_EVENT.message_loop
end
```

## Class Methods

- [message_loop](../method/WIN32OLE_EVENT/s/message_loop.md)
- [new](../method/WIN32OLE_EVENT/s/new.md)

## Instance Methods

- [handler](../method/WIN32OLE_EVENT/i/handler.md)
- [handler=](../method/WIN32OLE_EVENT/i/handler=3d.md)
- [off_event](../method/WIN32OLE_EVENT/i/off_event.md)
- [on_event](../method/WIN32OLE_EVENT/i/on_event.md)
- [on_event_with_outargs](../method/WIN32OLE_EVENT/i/on_event_with_outargs.md)
- [unadvise](../method/WIN32OLE_EVENT/i/unadvise.md)

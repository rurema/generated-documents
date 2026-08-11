# WIN32OLE_EVENT.message_loop

### def WIN32OLE_EVENT.message_loop -> ()

Windowsのメッセージポンプを実行します。

message_loopメソッドは、Windowsメッセージがキューイングされている限りメッセージの読み出しとディスパッチを実行します。

COMのスレッド間/プロセス間通信はスレッド内で呼び出しをシリアライズするためにWindowsメッセージを利用します。このため、ほとんどのイベント処理は
Windowsメッセージを読み取ってディスパッチすることで通知されます。

```ruby
ie = WIN32OLE.new('InternetExplorer.Application.1')
event = WIN32OLE_EVENT.new(ie, 'DWebBrowserEvents2')
b = false
event.on_event('DocumentComplete') do |disp, uri|
  disp.document.getElementsByTagName('a').each do |e|
    puts "#{e.innerHTML}=#{e.href}"   # => ダウンロード=http://www.ruby-lang.org/ja/downloads/ など
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

なお、メソッド名はloopですが、呼び出し時および既にキューイングされたメッセージの処理中にキューされたメッセージの処理が終わると呼び出し元に制御が戻ります。このため、イベント通知までに長い時間がかかる場合はすべてのイベントを受信するまでループを実行する必要があります。このとき他のスレッドに制御を与える必要があれば、[Kernel?.sleep](../../../method/Kernel/m/sleep.md)などを呼び出してください。message_loopメソッドの呼び出し中はRubyのスレッドの切り替えは行われません。

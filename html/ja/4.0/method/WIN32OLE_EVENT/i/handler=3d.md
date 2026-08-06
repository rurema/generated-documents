# WIN32OLE_EVENT#handler=

### def handler=(obj)

イベント処理を実行するオブジェクトを登録します。

イベントハンドラをメソッドとして持つオブジェクトをイベントハンドラとして登録します。

イベントハンドラはイベント名に「on」を前置します。もし、イベントに対応するonメソッドが実装されていなければmethod_missingが呼ばれます。イベント名は大文字小文字を区別するため、正確な記述が必要です。

- **param** `obj` -- イベントに対応するメソッドを持つオブジェクト。イベント受信を
           解除するにはnilを指定します。

```ruby
class IeHandler
  def initialize
    @completed = false
  end
  attr_reader :completed
  def onDocumentComplete(disp, uri)
    disp.document.getElementsByTagName('a').each do |e|
      puts "#{e.innerHTML}=#{e.href}"
    end
    @completed = true
  end
  def method_missing(id, *args)
    puts "event=#{id.to_s}, args=#{args.inspect}"
  end
end

ie = WIN32OLE.new('InternetExplorer.Application.1')
event = WIN32OLE_EVENT.new(ie, 'DWebBrowserEvents2')
event.handler = IeHandler.new
ie.Navigate2 'http://www.ruby-lang.org/ja/'
loop do
  break if event.handler.completed
  WIN32OLE_EVENT.message_loop
end
ie.Quit
```

[WIN32OLE_EVENT#on_event](../../../method/WIN32OLE_EVENT/i/on_event.md)などの呼び出しでブロックが登録されている場合、そちらが優先されます。

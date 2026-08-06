# WIN32OLE_EVENT#off_event

### def off_event(event = nil) -> ()

[WIN32OLE_EVENT#on_event](../../../method/WIN32OLE_EVENT/i/on_event.md)で登録したブロックを解除します。

- **param** `event` -- 文字列またはシンボルで登録時に指定したイベント名を指定しま
す。nilの場合、[WIN32OLE_EVENT#on_event](../../../method/WIN32OLE_EVENT/i/on_event.md)に対してnilを指定したブロックを解除します。

```ruby
ev = WIN32OLE_EVENT.new(ie, 'DWebBrowserEvents')
ev.on_event(:NavigateComplete) {|url| puts url }
# ...
ev.off_event(:NavigateComplete)
```

# CGI::QueryExtension#params

### def params -> Hash

パラメータを格納したハッシュを返します。

フォームから入力された値や、URLに埋め込まれた QUERY_STRING のパース結果の取得などに使用します。

```ruby
cgi = CGI.new
p cgi.params['developer']   # => ["Matz"] (Array)
p cgi.params['developer'][0]  # => "Matz"
p cgi.params['']            # => nil
```

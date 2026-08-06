# WEBrick::HTTPResponse#set_redirect

### def set_redirect(status, url)    -> ()

指定された url にリダイレクトするためのヘッダと内容(エンティティボディ)を設定し例外 status を発生させます。

- **param** `status` -- [WEBrick::HTTPStatus::Redirect](../../../class/WEBrick=3a=3aHTTPStatus=3a=3aRedirect.md) を指定します。

- **param** `url` -- URL を指定します。

```ruby title="例"
require 'webrick'
res.set_redirect WEBrick::HTTPStatus::TemporaryRedirect
```

# Etc?.getlogin

### module_function def getlogin -> String | nil

自分の login 名を返します。得られなかった場合は nil を返します。

getlogin は [man:su(1)] などでログイン時のユーザとは異なるユーザになっている場合、現在ではなくログイン時のユーザを返します。

このメソッドが失敗した場合は [Etc?.getpwuid](../../../method/Etc/m/getpwuid.md) にフォールバックするとよいでしょう。

たとえば、環境変数 USER などもあわせて、以下のようにフォールバックできます。

```ruby
require "etc"
login_user = ENV['USER'] || ENV['LOGNAME'] || Etc.getlogin || Etc.getpwuid.name
```

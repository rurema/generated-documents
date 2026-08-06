# WEBrick::Config::General

### const General -> Hash

[WEBrick::GenericServer](../../../class/WEBrick=3a=3aGenericServer.md) の設定のデフォルト値を保持したハッシュです。

```ruby
require 'webrick'
WEBrick::Config::General = {
  :ServerName     => Utils.getservername,
  :BindAddress    => nil,   # "0.0.0.0" or "::" or nil
  :Port           => nil,   # users MUST specify this!!
  :MaxClients     => 100,   # maximum number of the concurrent connections
  :ServerType     => nil,   # default: WEBrick::SimpleServer
  :Logger         => nil,   # default: WEBrick::Log.new
  :ServerSoftware => "WEBrick/#{WEBrick::VERSION} " +
                     "(Ruby/#{RUBY_VERSION}/#{RUBY_RELEASE_DATE})",
  :TempDir        => ENV['TMPDIR']||ENV['TMP']||ENV['TEMP']||'/tmp',
  :DoNotListen    => false,
  :StartCallback  => nil,
  :StopCallback   => nil,
  :AcceptCallback => nil,
:DoNotReverseLookup => true,
}
```

### const General -> Hash

[WEBrick::Config::SSL](../../../method/WEBrick=3a=3aConfig/c/SSL.md) の内容がマージされます。

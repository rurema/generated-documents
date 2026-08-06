# library rubygems/command_manager

gem コマンドによってサポートされているサブコマンドを管理するライブラリです。

Extra commands can be provided by writing a rubygems_plugin.rb
file in an installed gem.  You should register your command against the
Gem::CommandManager instance, like this:

```ruby
# file rubygems_plugin.rb
require 'rubygems/command_manager'

class Gem::Commands::EditCommand < Gem::Command
  # ...
end

Gem::CommandManager.instance.register_command :edit
```

See Gem::Command for instructions on writing gem commands.

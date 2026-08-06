# Gem::CommandManager#find_command

### def find_command(command_name) -> Gem::Command | nil

登録されているコマンドからマッチしたものを返します。

- **param** `command_name` -- コマンド名を文字列で指定します。

- **return** -- [Gem::Command](../../../class/Gem=3a=3aCommand.md) のサブクラスのインスタンスを返します。

- **raise** `RuntimeError` -- マッチする可能性のあるコマンドが複数ある場合に発生します。
                    また、マッチするコマンドが無かった場合にも発生します。

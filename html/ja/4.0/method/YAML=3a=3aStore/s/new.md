# YAML::Store.new

### def YAML::Store.new(file_name, yaml_opts = {})                      -> YAML::Store
### def YAML::Store.new(file_name, thread_safe = false, yaml_opts = {}) -> YAML::Store

自身を初期化します。

- **param** `file_name` -- 格納先のファイル名。ファイルがない場合は作成します。既にファイルが存在する場合はその内容を読み込みます。

- **param** `thread_safe` -- 自身をスレッドセーフにして初期化するかどうか。

- **param** `yaml_opts` -- YAML 出力時のオプションを [Hash](../../../class/Hash.md) で指定します。
                 詳しくは [Psych.dump](../../../method/Psych/s/dump.md) を参照してください。

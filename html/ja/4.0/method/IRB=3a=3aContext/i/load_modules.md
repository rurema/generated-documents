# IRB::Context#load_modules

### def load_modules -> [String]

irb の起動時に -r オプション指定で読み込まれたライブラリ、~/.irbrc などの設定ファイル内で IRB.conf[:LOAD_MODULES] 指定で読み込まれたライブラリの名前の配列を返します。

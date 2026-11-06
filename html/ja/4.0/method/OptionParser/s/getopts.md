# OptionParser.getopts

### def OptionParser.getopts(argv, *opts, symbolize_names: false)   -> Hash
### def OptionParser.getopts(*opts, symbolize_names: false)         -> Hash

引数をパースした結果を、Hash として返します。(self.new.getopts と同じです)

- **param** `argv` -- パースしたい配列を指定します。

- **param** `opts` -- 引数を文字列で指定します。

- **param** `symbolize_names` -- true を指定すると、戻り値の [Hash](../../../class/Hash.md) はキーがシンボルになります。false を指定した場合、戻り値の [Hash](../../../class/Hash.md) はキーが文字列になります。

- **raise** `OptionParser::ParseError` -- パースに失敗した場合、発生します。
                                実際は OptionParser::ParseError のサブクラスになります。


- **SEE** [OptionParser#getopts](../../../method/OptionParser/i/getopts.md)

# OptionParser.getopts

### def OptionParser.getopts(argv, *opts)   -> Hash
### def OptionParser.getopts(*opts)         -> Hash

引数をパースした結果を、Hash として返します。(self.new.getopts と同じです)

- **param** `argv` -- パースしたい配列を指定します。

- **param** `opts` -- 引数を文字列で指定します。

- **raise** `OptionParser::ParseError` -- パースに失敗した場合、発生します。
                                実際は OptionParser::ParseError のサブクラスになります。


- **SEE** [OptionParser#getopts](../../../method/OptionParser/i/getopts.md)

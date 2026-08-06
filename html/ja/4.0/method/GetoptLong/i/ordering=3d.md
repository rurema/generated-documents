# GetoptLong#ordering=

### def ordering=(ordering)

順序形式を設定します。

環境変数 POSIXLY_CORRECT が定義されていると、引数に 
[GetoptLong::PERMUTE](../../../method/GetoptLong/c/PERMUTE.md) を与えてこのメソッドを呼び出しても、実際のところの順序形式は [GetoptLong::REQUIRE_ORDER](../../../method/GetoptLong/c/REQUIRE_ORDER.md) に設定されます。

環境変数 POSIXLY_CORRECT が定義されていない限り、[GetoptLong::PERMUTE](../../../method/GetoptLong/c/PERMUTE.md)
が初期値です。定義されていれば、[GetoptLong::REQUIRE_ORDER](../../../method/GetoptLong/c/REQUIRE_ORDER.md) が初期値になります。

- **param** `ordering` -- [GetoptLong::REQUIRE_ORDER](../../../method/GetoptLong/c/REQUIRE_ORDER.md), [GetoptLong::PERMUTE](../../../method/GetoptLong/c/PERMUTE.md),
                [GetoptLong::RETURN_IN_ORDER](../../../method/GetoptLong/c/RETURN_IN_ORDER.md) のいずれかを指定します。

- **raise** `ArgumentError` -- [GetoptLong::REQUIRE_ORDER](../../../method/GetoptLong/c/REQUIRE_ORDER.md), [GetoptLong::PERMUTE](../../../method/GetoptLong/c/PERMUTE.md),
                 [GetoptLong::RETURN_IN_ORDER](../../../method/GetoptLong/c/RETURN_IN_ORDER.md) 以外の値を指定した場合に発生します。

- **raise** `RuntimeError` -- [GetoptLong#get](../../../method/GetoptLong/i/get.md), [GetoptLong#get_option](../../../method/GetoptLong/i/get_option.md),
                    [GetoptLong#each](../../../method/GetoptLong/i/each.md), [GetoptLong#each_option](../../../method/GetoptLong/i/each_option.md) メソッドを
                    呼び出した後にこのメソッドを呼び出した場合に発生します。

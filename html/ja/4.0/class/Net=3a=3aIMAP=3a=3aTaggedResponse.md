# class Net::IMAP::TaggedResponse < Struct

IMAP のタグ付きレスポンスを表すクラスです。

IMAP のレスポンスにはタグ付きのものとタグなしのものがあり、タグ付きのレスポンスはクライアントが発行したコマンドによる操作が成功するか失敗するかのどちらかで完了したことを意味します。タグによってどのコマンドが完了したのかを示します。

- **SEE** [Net::IMAP::UntaggedResponse](../class/Net=3a=3aIMAP=3a=3aUntaggedResponse.md)

## Instance Methods

- [data](../method/Net=3a=3aIMAP=3a=3aTaggedResponse/i/data.md)
- [name](../method/Net=3a=3aIMAP=3a=3aTaggedResponse/i/name.md)
- [raw_data](../method/Net=3a=3aIMAP=3a=3aTaggedResponse/i/raw_data.md)
- [tag](../method/Net=3a=3aIMAP=3a=3aTaggedResponse/i/tag.md)

# Net::IMAP::FetchData#attr

### def attr -> { String => object }

各メッセージのアトリビュートの値をハッシュテーブルで返します。

キーはアトリビュート名の文字列、値はアトリビュートの値となります。
値のクラスはアトリビュートによって異なります。

利用可能なアトリビュートは以下の通りです。

- **`BODY`**:
    BODYSTRUCTURE の拡張データなしの形式。
    [Net::IMAP::BodyTypeBasic](../../../class/Net=3a=3aIMAP=3a=3aBodyTypeBasic.md), [Net::IMAP::BodyTypeText](../../../class/Net=3a=3aIMAP=3a=3aBodyTypeText.md),
    [Net::IMAP::BodyTypeMessage](../../../class/Net=3a=3aIMAP=3a=3aBodyTypeMessage.md), [Net::IMAP::BodyTypeMultipart](../../../class/Net=3a=3aIMAP=3a=3aBodyTypeMultipart.md)
    のいずれか。
- **`BODY[<section>]<<partial>>`**:
    section で指定されたセクションのボディの内容。文字列。
- **`BODY.PEEK[<section>]<<partial>>`**:
    section で指定されたセクションのメッセージボディの内容。文字列。
    ただしこれで内容を見ても :Seen フラグを設定しない点が
    BODY[<section>]と同様
- **`BODYSTRUCTURE`**:
    MIME-IMB でのメッセージボディ。
    [Net::IMAP::BodyTypeBasic](../../../class/Net=3a=3aIMAP=3a=3aBodyTypeBasic.md), [Net::IMAP::BodyTypeText](../../../class/Net=3a=3aIMAP=3a=3aBodyTypeText.md),
    [Net::IMAP::BodyTypeMessage](../../../class/Net=3a=3aIMAP=3a=3aBodyTypeMessage.md), [Net::IMAP::BodyTypeMultipart](../../../class/Net=3a=3aIMAP=3a=3aBodyTypeMultipart.md)
    のいずれか。
- **`ENVELOPE`**:
    メッセージのエンベロープ。
    [Net::IMAP::Envelope](../../../class/Net=3a=3aIMAP=3a=3aEnvelope.md) オブジェクト。
- **`FLAGS`**:
    メッセージにセットされたフラグ。
    [Symbol](../../../class/Symbol.md) の配列。[String#capitalize](../../../method/String/i/capitalize.md) でキャピタライズされている。
- **`INTERNALDATE`**:
    メッセージの内部日付。文字列。
- **`RFC822`**:
    BODY[] と同じ。文字列。
- **`RFC822.HEADER`**:
    BODY.PEEK[HEADER] と同じ。文字列。
- **`RFC822.SIZE`**:
    メッセージの [RFC:822] サイズ。整数。
- **`RFC822.TEXT`**:
    BODY[TEXT] と同じ。文字列。
- **`UID`**:
    UID。整数。

詳しくは [RFC:2060] の FETCH command の節を見てください。

- **SEE** [Net::IMAP#fetch](../../../method/Net=3a=3aIMAP/i/fetch.md), [Net::IMAP#uid_fetch](../../../method/Net=3a=3aIMAP/i/uid_fetch.md)

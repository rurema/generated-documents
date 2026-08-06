# class WEBrick::HTTPUtils::FormData < String

クライアントがフォームへ入力した値を表すクラスです。multipart/form-data なデータを表すのにも使われます。

[WEBrick::HTTPRequest#query](../method/WEBrick=3a=3aHTTPRequest/i/query.md) はリクエストのクエリーあるいはクライアントがフォームへ入力した値を保持した Hash を返しますが、その Hash のキーと値のうち値は FormData クラスのインスタンスになります。
同じ名前のフィールドが複数ある場合、[WEBrick::HTTPUtils::FormData#list](../method/WEBrick=3a=3aHTTPUtils=3a=3aFormData/i/list.md) や
[WEBrick::HTTPUtils::FormData#each_data](../method/WEBrick=3a=3aHTTPUtils=3a=3aFormData/i/each_data.md) によりそれぞれの値を取り出すことができます。

通常のフォームデータ(application/x-www-form-urlencoded)は unescape されています。
ただし multipart/form-data なフォームデータはユーザが content-transfer-encoding 
ヘッダを見て適切に処理する必要があります。

### リンク

- [rfc:1867] Form-based File Upload in HTML.
- [rfc:2388] multipart/form-data の説明。

## Class Methods

- [new](../method/WEBrick=3a=3aHTTPUtils=3a=3aFormData/s/new.md)

## Instance Methods

- [<<](../method/WEBrick=3a=3aHTTPUtils=3a=3aFormData/i/=3c=3c.md)
- [\[\]](../method/WEBrick=3a=3aHTTPUtils=3a=3aFormData/i/=5b=5d.md)
- [append_data](../method/WEBrick=3a=3aHTTPUtils=3a=3aFormData/i/append_data.md)
- [each_data](../method/WEBrick=3a=3aHTTPUtils=3a=3aFormData/i/each_data.md)
- [filename](../method/WEBrick=3a=3aHTTPUtils=3a=3aFormData/i/filename.md)
- [filename=](../method/WEBrick=3a=3aHTTPUtils=3a=3aFormData/i/filename=3d.md)
- [list](../method/WEBrick=3a=3aHTTPUtils=3a=3aFormData/i/list.md)
- [to_ary](../method/WEBrick=3a=3aHTTPUtils=3a=3aFormData/i/to_ary.md)
- [name](../method/WEBrick=3a=3aHTTPUtils=3a=3aFormData/i/name.md)
- [name=](../method/WEBrick=3a=3aHTTPUtils=3a=3aFormData/i/name=3d.md)
- [to_s](../method/WEBrick=3a=3aHTTPUtils=3a=3aFormData/i/to_s.md)

# module Net::HTTPExceptions

HTTP 例外クラスです。

実際にはこれを include した以下のサブクラスの例外が発生します。

  - [Net::HTTPError](../class/Net=3a=3aHTTPError.md)
  - [Net::HTTPRetriableError](../class/Net=3a=3aHTTPRetriableError.md)
  - [Net::HTTPServerException](../class/Net=3a=3aHTTPServerException.md)
  - [Net::HTTPFatalError](../class/Net=3a=3aHTTPFatalError.md)

また、例外を発生させるためには [Net::HTTPResponse#value](../method/Net=3a=3aHTTPResponse/i/value.md) を呼ぶ必要があります。

## Instance Methods

- [response](../method/Net=3a=3aHTTPExceptions/i/response.md)

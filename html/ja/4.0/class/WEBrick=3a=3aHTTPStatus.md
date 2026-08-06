# module WEBrick::HTTPStatus

HTTP のステータスを表す例外クラスを提供するモジュールです。
ステータスコード 200 などの成功の場合も含まれます。

以下のような継承による階層を構成しています。

```text
StandardError
 * WEBrick::HTTPStatus::Status
    * WEBrick::HTTPStatus::Info             (1XX)
    * WEBrick::HTTPStatus::Success          (2XX)
    * WEBrick::HTTPStatus::Redirect         (3XX)
    * WEBrick::HTTPStatus::Error            
       * WEBrick::HTTPStatus::ClientError   (4XX)
       * WEBrick::HTTPStatus::ServerError   (5XX)
```

## Class Methods

- [\[\]](../method/WEBrick=3a=3aHTTPStatus/s/=5b=5d.md)

## Module Functions

- [client_error?](../method/WEBrick=3a=3aHTTPStatus/m/client_error=3f.md)
- [error?](../method/WEBrick=3a=3aHTTPStatus/m/error=3f.md)
- [info?](../method/WEBrick=3a=3aHTTPStatus/m/info=3f.md)
- [reason_phrase](../method/WEBrick=3a=3aHTTPStatus/m/reason_phrase.md)
- [redirect?](../method/WEBrick=3a=3aHTTPStatus/m/redirect=3f.md)
- [server_error?](../method/WEBrick=3a=3aHTTPStatus/m/server_error=3f.md)
- [success?](../method/WEBrick=3a=3aHTTPStatus/m/success=3f.md)

## Constants

- [RC_ACCEPTED](../method/WEBrick=3a=3aHTTPStatus/c/RC_ACCEPTED.md)
- [RC_BAD_GATEWAY](../method/WEBrick=3a=3aHTTPStatus/c/RC_BAD_GATEWAY.md)
- [RC_BAD_REQUEST](../method/WEBrick=3a=3aHTTPStatus/c/RC_BAD_REQUEST.md)
- [RC_CONFLICT](../method/WEBrick=3a=3aHTTPStatus/c/RC_CONFLICT.md)
- [RC_CONTINUE](../method/WEBrick=3a=3aHTTPStatus/c/RC_CONTINUE.md)
- [RC_CREATED](../method/WEBrick=3a=3aHTTPStatus/c/RC_CREATED.md)
- [RC_EXPECTATION_FAILED](../method/WEBrick=3a=3aHTTPStatus/c/RC_EXPECTATION_FAILED.md)
- [RC_FORBIDDEN](../method/WEBrick=3a=3aHTTPStatus/c/RC_FORBIDDEN.md)
- [RC_FOUND](../method/WEBrick=3a=3aHTTPStatus/c/RC_FOUND.md)
- [RC_GATEWAY_TIMEOUT](../method/WEBrick=3a=3aHTTPStatus/c/RC_GATEWAY_TIMEOUT.md)
- [RC_GONE](../method/WEBrick=3a=3aHTTPStatus/c/RC_GONE.md)
- [RC_HTTP_VERSION_NOT_SUPPORTED](../method/WEBrick=3a=3aHTTPStatus/c/RC_HTTP_VERSION_NOT_SUPPORTED.md)
- [RC_INTERNAL_SERVER_ERROR](../method/WEBrick=3a=3aHTTPStatus/c/RC_INTERNAL_SERVER_ERROR.md)
- [RC_LENGTH_REQUIRED](../method/WEBrick=3a=3aHTTPStatus/c/RC_LENGTH_REQUIRED.md)
- [RC_METHOD_NOT_ALLOWED](../method/WEBrick=3a=3aHTTPStatus/c/RC_METHOD_NOT_ALLOWED.md)
- [RC_MOVED_PERMANENTLY](../method/WEBrick=3a=3aHTTPStatus/c/RC_MOVED_PERMANENTLY.md)
- [RC_MULTIPLE_CHOICES](../method/WEBrick=3a=3aHTTPStatus/c/RC_MULTIPLE_CHOICES.md)
- [RC_NON_AUTHORITATIVE_INFORMATION](../method/WEBrick=3a=3aHTTPStatus/c/RC_NON_AUTHORITATIVE_INFORMATION.md)
- [RC_NOT_ACCEPTABLE](../method/WEBrick=3a=3aHTTPStatus/c/RC_NOT_ACCEPTABLE.md)
- [RC_NOT_FOUND](../method/WEBrick=3a=3aHTTPStatus/c/RC_NOT_FOUND.md)
- [RC_NOT_IMPLEMENTED](../method/WEBrick=3a=3aHTTPStatus/c/RC_NOT_IMPLEMENTED.md)
- [RC_NOT_MODIFIED](../method/WEBrick=3a=3aHTTPStatus/c/RC_NOT_MODIFIED.md)
- [RC_NO_CONTENT](../method/WEBrick=3a=3aHTTPStatus/c/RC_NO_CONTENT.md)
- [RC_OK](../method/WEBrick=3a=3aHTTPStatus/c/RC_OK.md)
- [RC_PARTIAL_CONTENT](../method/WEBrick=3a=3aHTTPStatus/c/RC_PARTIAL_CONTENT.md)
- [RC_PAYMENT_REQUIRED](../method/WEBrick=3a=3aHTTPStatus/c/RC_PAYMENT_REQUIRED.md)
- [RC_PRECONDITION_FAILED](../method/WEBrick=3a=3aHTTPStatus/c/RC_PRECONDITION_FAILED.md)
- [RC_PROXY_AUTHENTICATION_REQUIRED](../method/WEBrick=3a=3aHTTPStatus/c/RC_PROXY_AUTHENTICATION_REQUIRED.md)
- [RC_REQUEST_ENTITY_TOO_LARGE](../method/WEBrick=3a=3aHTTPStatus/c/RC_REQUEST_ENTITY_TOO_LARGE.md)
- [RC_REQUEST_RANGE_NOT_SATISFIABLE](../method/WEBrick=3a=3aHTTPStatus/c/RC_REQUEST_RANGE_NOT_SATISFIABLE.md)
- [RC_REQUEST_TIMEOUT](../method/WEBrick=3a=3aHTTPStatus/c/RC_REQUEST_TIMEOUT.md)
- [RC_REQUEST_URI_TOO_LARGE](../method/WEBrick=3a=3aHTTPStatus/c/RC_REQUEST_URI_TOO_LARGE.md)
- [RC_RESET_CONTENT](../method/WEBrick=3a=3aHTTPStatus/c/RC_RESET_CONTENT.md)
- [RC_SEE_OTHER](../method/WEBrick=3a=3aHTTPStatus/c/RC_SEE_OTHER.md)
- [RC_SERVICE_UNAVAILABLE](../method/WEBrick=3a=3aHTTPStatus/c/RC_SERVICE_UNAVAILABLE.md)
- [RC_SWITCHING_PROTOCOLS](../method/WEBrick=3a=3aHTTPStatus/c/RC_SWITCHING_PROTOCOLS.md)
- [RC_TEMPORARY_REDIRECT](../method/WEBrick=3a=3aHTTPStatus/c/RC_TEMPORARY_REDIRECT.md)
- [RC_UNAUTHORIZED](../method/WEBrick=3a=3aHTTPStatus/c/RC_UNAUTHORIZED.md)
- [RC_UNSUPPORTED_MEDIA_TYPE](../method/WEBrick=3a=3aHTTPStatus/c/RC_UNSUPPORTED_MEDIA_TYPE.md)
- [RC_USE_PROXY](../method/WEBrick=3a=3aHTTPStatus/c/RC_USE_PROXY.md)

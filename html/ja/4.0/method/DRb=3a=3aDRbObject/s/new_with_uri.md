# DRb::DRbObject.new_with_uri

### def DRb::DRbObject.new_with_uri(uri) -> DRb::DRbObject

URI から新しい DRbObject を生成します。

別プロセスの [DRb?.start_service](../../../method/DRb/m/start_service.md) で指定したフロントオブジェクトを指すリモートオブジェクトを取り出します。

- **param** `uri` -- URI リモートオブジェクトを指定するための URI (文字列)

# class DRb::DRbServer < Object

dRuby サーバクラス。

dRuby サーバは
  - リモートからのメソッド呼び出しを受け取る
  - ローカルオブジェクトをリモートプロセスにリモートオブジェクトとして
    渡す
などを実現するために必要です。そのため、このような操作をする前にサーバを起動する必要があります。
他のプロセスのリモートメソッドをマーシャリング可能な引数のみで呼び出すならばサーバは必要ありません。

複数のサーバを起動することもできますが、通常は
[DRb?.start_service](../method/DRb/m/start_service.md) でサーバを起動します。

## Class Methods

- [default_acl](../method/DRb=3a=3aDRbServer/s/default_acl.md)
- [default_argc_limit](../method/DRb=3a=3aDRbServer/s/default_argc_limit.md)
- [default_id_conv](../method/DRb=3a=3aDRbServer/s/default_id_conv.md)
- [default_load_limit](../method/DRb=3a=3aDRbServer/s/default_load_limit.md)
- [new](../method/DRb=3a=3aDRbServer/s/new.md)
- [verbose](../method/DRb=3a=3aDRbServer/s/verbose.md)
- [verbose=](../method/DRb=3a=3aDRbServer/s/verbose=3d.md)

## Instance Methods

- [alive?](../method/DRb=3a=3aDRbServer/i/alive=3f.md)
- [config](../method/DRb=3a=3aDRbServer/i/config.md)
- [front](../method/DRb=3a=3aDRbServer/i/front.md)
- [here?](../method/DRb=3a=3aDRbServer/i/here=3f.md)
- [stop_service](../method/DRb=3a=3aDRbServer/i/stop_service.md)
- [thread](../method/DRb=3a=3aDRbServer/i/thread.md)
- [uri](../method/DRb=3a=3aDRbServer/i/uri.md)
- [verbose](../method/DRb=3a=3aDRbServer/i/verbose.md)
- [verbose=](../method/DRb=3a=3aDRbServer/i/verbose=3d.md)

## Constants

- [INSECURE_METHOD](../method/DRb=3a=3aDRbServer/c/INSECURE_METHOD.md)

# OpenSSL::SSL::SSLContext#setup

### def setup -> true | nil

`self` の設定を確定させ、内部状態を準備します。

このメソッドは [OpenSSL::SSL::SSLSocket](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLSocket.md) オブジェクトが生成されるときに自動的に呼び出されます。ただしスレッドセーフではないため、複数のスレッドを使うプログラムでは `SSLSocket` オブジェクトを生成する前に明示的に呼び出しておく必要があります。

初めて呼び出したときは true を返します。すでに呼び出し済みの場合は何もせず nil を返します。

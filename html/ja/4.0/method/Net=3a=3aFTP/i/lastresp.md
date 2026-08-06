# Net::FTP#lastresp

### def lastresp -> String
### def last_response_code -> String

サーバからの最後の応答のコードを文字列で返します。

例えばログイン([Net::FTP#login](../../../method/Net=3a=3aFTP/i/login.md))に成功した場合には
"230" を返します。

数字の意味は [rfc:959] 参照してください。

- **SEE** [Net::FTP#last_response](../../../method/Net=3a=3aFTP/i/last_response.md)

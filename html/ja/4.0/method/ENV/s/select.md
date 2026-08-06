# ENV.select

### def ENV.select                      -> Enumerator
### def ENV.select {|key, value| ... }  -> Hash
### def ENV.filter                      -> Enumerator
### def ENV.filter {|key, value| ... }  -> Hash

環境変数名と値についてブロックを評価し、真を返したものを集めたハッシュを返します。

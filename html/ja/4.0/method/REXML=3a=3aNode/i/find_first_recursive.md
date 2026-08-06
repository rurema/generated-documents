# REXML::Node#find_first_recursive

### def find_first_recursive {|node| ... } -> REXML::Node | nil

self とその各 element node を引数とし、ブロックを呼び出し、そのブロックの返り値が真であった最初の node を返します。

見付からなかった場合は nil を返します。

# Resolv::IPv6::Regex_8Hex

### const Regex_6Hex4Dec -> Regexp
### const Regex_8Hex -> Regexp
### const Regex_CompressedHex -> Regexp
### const Regex_CompressedHex4Dec -> Regexp

IPv6の各文字列表記とマッチする正規表現です。順に
  - a:b:c:d:e:f:w.x.y.z
  - a:b:c:d:e:f:g:h
  - a::b
  - a::b:w.x.y.z
という文字列とマッチします。

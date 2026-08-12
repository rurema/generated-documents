# module OpenSSL::Random

OpenSSL が利用する擬似乱数生成器関連のモジュールです。

  - [RFC:4086]

### 暗号と乱数

OpenSSL では、鍵を生成するためなどに乱数を用いています。例えば RSA では巨大(512bitや1024bitなど)な素数の組を乱数で生成し、そこから公開鍵、秘密鍵のペアを計算します。鍵は他人に知られてはならないため、その乱数は外部からの推論が不可能な良い性質を持っている必要があります。
このようなメソッドには以下のものがあります。
  - [OpenSSL::PKey::RSA.generate](../method/OpenSSL=3a=3aPKey=3a=3aRSA/s/generate.md)
  - [OpenSSL::PKey::DSA.generate](../method/OpenSSL=3a=3aPKey=3a=3aDSA/s/generate.md)
  - [OpenSSL::PKey::DH.generate](../method/OpenSSL=3a=3aPKey=3a=3aDH/s/generate.md)
  - [OpenSSL::Cipher#random_key](../method/OpenSSL=3a=3aCipher/i/random_key.md)
そのような乱数は適切な実装を持つ擬似乱数生成器に適切なシードを渡すことによって実現できます。

OpenSSL にはそのような擬似乱数生成器が実装されています。
そして、この擬似乱数生成器は OpenSSL の様々なモジュールから利用されています。
上に挙げた鍵生成メソッドの他に、
  - [OpenSSL::BN.rand](../method/OpenSSL=3a=3aBN/s/rand.md)
  - [OpenSSL::BN.rand_range](../method/OpenSSL=3a=3aBN/s/rand_range.md)
  - [OpenSSL::BN.generate_prime](../method/OpenSSL=3a=3aBN/s/generate_prime.md)
  - [OpenSSL::Cipher#random_iv](../method/OpenSSL=3a=3aCipher/i/random_iv.md)
などでも利用されます。

擬似乱数生成器は適切なシードを与えられなければ正しく動作しません。
OpenSSL にはそのための API
  - [OpenSSL::Random?.random_add](../method/OpenSSL=3a=3aRandom/m/random_add.md)
  - [OpenSSL::Random?.seed](../method/OpenSSL=3a=3aRandom/m/seed.md)
  - [OpenSSL::Random?.load_random_file](../method/OpenSSL=3a=3aRandom/m/load_random_file.md)
が存在します。これらの API を模式的に説明すると、以下のようになります。
  - シードの各ビットは統計的な乱雑さ、予測不可能性を持ち、ビット列の
    乱雑さはエントロピーという量(単位は bit, 8bit = 1byte)
    で量ることができる。
  - 特にシードのすべてのビットが完全にランダムである場合には、
    エントロピーの大きさとシードのビット数は一致する。逆に
    シードのすべてのビットがある意味で既知ならば、
    エントロピーは 0 である。
  - 擬似乱数生成器にエントロピーを追加することによって
    乱数生成器から得られる乱数がより予測不可能になる。

エントロピー源には良いものと悪いものがあります。例えば現在時刻(Unix time)はエントロピー源としては悪いです。なぜなら予測不可能なのはせいぜい秒の部分のみであり、上位のビットは予測可能だからです。
そこに含まれるエントロピー量を適切に評価できるならばシードとして利用できますが、通常はもっと良いエントロピー源があるはずです。
Linux であれば /dev/random が適当なエントロピー源となるでしょう。

OpenSSL では EGD(Entropy Gathering Daemon)からエントロピーを取得することもできます。適切なエントロピー源を提供していない OS ではこのような方法でエントロピー源を用意する必要があるかもしれません。

実際のところ、OpenSSL バージョンによっては OS が提供するエントロピー源から必要な量のエントロピーを得るよう実装してあるため、これらの API を使ってエントロピーを追加する必要はない場合が多いでしょう。ただし、 OS によっては
OpenSSL が利用可能なエントロピー源を見つけられない場合があり、その場合はこれらのメソッドで明示的にエントロピーを追加する必要があるでしょう。

## Module Functions

- [egd](../method/OpenSSL=3a=3aRandom/m/egd.md)
- [egd_bytes](../method/OpenSSL=3a=3aRandom/m/egd_bytes.md)
- [load_random_file](../method/OpenSSL=3a=3aRandom/m/load_random_file.md)
- [pseudo_bytes](../method/OpenSSL=3a=3aRandom/m/pseudo_bytes.md)
- [random_add](../method/OpenSSL=3a=3aRandom/m/random_add.md)
- [random_bytes](../method/OpenSSL=3a=3aRandom/m/random_bytes.md)
- [seed](../method/OpenSSL=3a=3aRandom/m/seed.md)
- [status?](../method/OpenSSL=3a=3aRandom/m/status=3f.md)
- [write_random_file](../method/OpenSSL=3a=3aRandom/m/write_random_file.md)

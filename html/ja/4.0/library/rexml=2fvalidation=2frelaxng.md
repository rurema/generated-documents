# library rexml/validation/relaxng

XML 文書を RELAX NG のスキーマで検証するためのライブラリです。

[REXML::Validation::RelaxNG](../class/REXML=3a=3aValidation=3a=3aRelaxNG.md) のオブジェクト(バリデータ)を、[REXML::Parsers::UltraLightParser#add_listener](../method/REXML=3a=3aParsers=3a=3aUltraLightParser/i/add_listener.md) などでパーサに登録して使います。パーサが文書を読み進めるのに合わせて検証が行われ、文書がスキーマに合わないことが分かった時点で [REXML::Validation::ValidationException](../class/REXML=3a=3aValidation=3a=3aValidationException.md) が発生します。

```ruby title="例"
require 'rexml/parsers/ultralightparser'
require 'rexml/validation/relaxng'

schema = <<~RELAXNG
  <?xml version="1.0" encoding="UTF-8"?>
  <element name="addressBook" xmlns="http://relaxng.org/ns/structure/1.0">
    <zeroOrMore>
      <element name="card">
        <element name="name"><text/></element>
        <element name="email"><text/></element>
      </element>
    </zeroOrMore>
  </element>
RELAXNG

validator = REXML::Validation::RelaxNG.new(schema)

# スキーマに合う文書は、例外が発生せずにパースが終わる
xml = "<addressBook><card><name>John Smith</name><email>js@example.com</email></card></addressBook>"
parser = REXML::Parsers::UltraLightParser.new(xml)
parser.add_listener(validator)
parser.parse

# 同じバリデータで別の文書を検証する前に reset を呼ぶ
validator.reset

# スキーマに合わない文書では例外が発生する
xml = "<addressBook><card><name>John Smith</name></card></addressBook>"
parser = REXML::Parsers::UltraLightParser.new(xml)
parser.add_listener(validator)
begin
  parser.parse
rescue REXML::Validation::ValidationException => e
  p e.class  # => REXML::Validation::ValidationException
end
```

要素と要素の間にある空白(改行やインデント)もテキストとして検証されます。スキーマがテキストを許していない位置に空白があると、検証に失敗します。

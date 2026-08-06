# class RSS::Maker::ChannelBase < Object

channel要素の値を設定します。

RSS 1.0を生成する場合はabout、title、link、
descriptionを設定しなければいけません。

RSS 0.91を生成する場合はtitle、link、
description、languageを設定しなければいけません。

RSS 2.0を生成する場合はtitle、link、
descriptionを設定しなければいけません。

maker.channelになんらかの値を設定しておきながら、上記のmaker.channelが要求する値を設定していない場合は
RSS::NotSetError例外が発生します。どの値も設定していない場合は例外は発生しません。

## Instance Methods

- [about](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/about.md)
- [about=](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/about=3d.md)
- [categories](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/categories.md)
- [cloud](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/cloud.md)
- [copyright](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/copyright.md)
- [copyright=](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/copyright=3d.md)
- [date](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/date.md)
- [date=](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/date=3d.md)
- [description](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/description.md)
- [description=](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/description=3d.md)
- [docs](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/docs.md)
- [docs=](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/docs=3d.md)
- [generator](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/generator.md)
- [generator=](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/generator=3d.md)
- [language](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/language.md)
- [language=](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/language=3d.md)
- [lastBuildDate](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/lastBuildDate.md)
- [lastBuildDate=](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/lastBuildDate=3d.md)
- [link](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/link.md)
- [link=](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/link=3d.md)
- [managingEditor](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/managingEditor.md)
- [managingEditor=](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/managingEditor=3d.md)
- [pubDate](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/pubDate.md)
- [pubDate=](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/pubDate=3d.md)
- [rating](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/rating.md)
- [rating=](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/rating=3d.md)
- [skipDays](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/skipDays.md)
- [skipHours](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/skipHours.md)
- [title](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/title.md)
- [title=](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/title=3d.md)
- [ttl](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/ttl.md)
- [ttl=](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/ttl=3d.md)
- [webMaster](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/webMaster.md)
- [webMaster=](../method/RSS=3a=3aMaker=3a=3aChannelBase/i/webMaster=3d.md)

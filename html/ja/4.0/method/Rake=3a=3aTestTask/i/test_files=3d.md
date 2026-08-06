# Rake::TestTask#test_files=

### def test_files=(list)

明示的にテスト対象のファイルを指定します。

[Rake::TestTask#pattern=](../../../method/Rake=3a=3aTestTask/i/pattern=3d.md), [Rake::TestTask#test_files=](../../../method/Rake=3a=3aTestTask/i/test_files=3d.md) の両方でテスト対象を指定した場合、両者は一つにまとめて使用されます。

- **param** `list` -- 配列か [Rake::FileList](../../../class/Rake=3a=3aFileList.md) のインスタンスを指定します。

# Rake::Application#run

### def run

Rake アプリケーションを実行します。

このメソッドは以下の 3 ステップを実行します。

- コマンドラインオプションを初期化します。[Rake::Application#init](../../../method/Rake=3a=3aApplication/i/init.md)
- タスクを定義します。[Rake::Application#load_rakefile](../../../method/Rake=3a=3aApplication/i/load_rakefile.md)
- コマンドラインで指定されたタスクを実行します。[Rake::Application#top_level](../../../method/Rake=3a=3aApplication/i/top_level.md)

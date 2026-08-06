# class Rake::FileTask < Rake::Task

ファイルタスクは時間に基づいた依存関係を解決できるタスクです。

このタスクの事前タスクのいずれか一つのタイムスタンプがこのタスクのタイムスタンプよりも新しければ、与えられたアクションを用いてファイルを再作成します。

## Class Methods

- [scope_name](../method/Rake=3a=3aFileTask/s/scope_name.md)

## Instance Methods

- [needed?](../method/Rake=3a=3aFileTask/i/needed=3f.md)
- [timestamp](../method/Rake=3a=3aFileTask/i/timestamp.md)

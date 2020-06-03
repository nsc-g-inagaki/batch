REM コマンドの復唱を防止
@echo off

REM コマンドプロンプト上の内容をすべて消去（クリア）する。
cls

GOTO :command
REM ディレクトリ内のファイルやサブディレクトリを表示
REM /bでファイル名のみの表示指定
REM 環境変数を使ってログインしているユーザーのダウンロードフォルダを指定
REM 結果をテキストファイルに記入

:command
dir /b %userprofile%\Downloads > downloads.txt 


REM 処理などを一時中断し、続行する場合は任意のキーを押すように求めるメッセージを表示します。
pause

REM 複数行のコメントをラベルを使ってコメントをスキップ
REM スキップしないとうまく動かない
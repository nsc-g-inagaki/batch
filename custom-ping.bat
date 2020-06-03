REM コマンドの復唱を防止
@echo off

REM コマンドプロンプト上の内容をすべて消去（クリア）する。
cls

REM ユーザーが入力するまで待ち、変数に値を保存する

set /p url="URLを入力をしてください：　"

REM urlよりhtttps:// を削除
set url= %url:https://=%

REM urlよりhttp://を削除
set url= %url:http://=%

REM pingで疎通確認
ping %url%

REM 処理などを一時中断し、続行する場合は任意のキーを押すように求めるメッセージを表示します。
pause
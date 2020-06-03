REM コマンドの復唱を防止
@echo off

REM コマンドプロンプト上の内容をすべて消去（クリア）する。
cls

REM ipconfigの結果にipv4と書いてある部分だけを検索し表示する
ipconfig | findstr /i "ipv4" 

GOTO :EOF
REM ipconfig | findstr "IPv4"
REM ipconfig | find "IPv4"
REM ipconfig | findstr /i "ipv4"
REM ipconfig


REM 処理などを一時中断し、続行する場合は任意のキーを押すように求めるメッセージを表示します。
:EOF
pause
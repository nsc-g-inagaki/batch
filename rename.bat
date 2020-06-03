REM コマンドの復唱を防止
@echo off
setLocal EnableDelayedExpansion

REM コマンドプロンプト上の内容をすべて消去（クリア）する。
cls

GOTO :BATCH-RENAME
REM ファイルを5つ作成して、名前変更をする

REM 1-5までループ
FOR /L %%i in (1,1,5) DO (
    REM ファイル名を変数として保持
    set file-name= a%%i.txt
    REM ファイルを作成
    type nul > %file-name%
    REM ファイル名を変更
    rename %file-name% ファイル%%i.txt
)

GOTO :EOF

:BATCH-RENAME
REM フォルダ内のテキストファイルすべての名前変更

REM ファイル名に使用する数字のカウンターを作成
set counter=1

REM cdにあるテキストファイルを一つずつループで処理
FOR %%i in (*.txt) DO (
    REM ファイルの名前変更
    rename %%i ファイル!counter!.txt
    REM カウンターを増やす
    set /a counter=counter+1
)

:EOF
REM 処理などを一時中断し、続行する場合は任意のキーを押すように求めるメッセージを表示します。
pause
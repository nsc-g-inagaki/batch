REM コマンドの復唱を防止
@echo off
:MENU
    REM コマンドプロンプト上の内容をすべて消去（クリア）する。
    cls
    REM メニューを表示
    echo ...................................................
    echo .       実行したいプログラムを選択してください      .
    echo ...................................................
    echo.
    echo     1.  Hello World
    echo     2.  カレントディレクトリ
    echo     3.  ファイルのリストアップ
    echo     4.  ファイルの中身リスト化
    echo     5.  IPアドレス
    echo     6.  ファイル名変更
    echo     7.  疎通確認
    echo     9.  終了
    echo.

    REM 入力を待機

    CHOICE /c:12345679 /N /M "プログラムの番号を入力してください: "

    REM 入力されたオプションにしたがって該当する処理へ飛ばす
    IF ERRORLEVEL 8 GOTO :EOF
    IF ERRORLEVEL 7 GOTO :COM-CHECK
    IF ERRORLEVEL 6 GOTO :BATCH-RENAME
    IF ERRORLEVEL 5 GOTO :IPADDR
    IF ERRORLEVEL 4 GOTO :DIR-TXT
    IF ERRORLEVEL 3 GOTO :DIR-LIST
    IF ERRORLEVEL 2 GOTO :CURRENT-DIR
    IF ERRORLEVEL 1 GOTO :HELLO
    
    REM　オプションが該当しなかった場合の処理
    echo.
    echo %option% は選択可能なオプションではありません。
    echo.
    echo もう一度選択をしてください。
    echo.
    pause
    GOTO :MENU

REM それぞれのバッチファイルを呼び出して処理終了
:HELLO
    call hello-world.bat
    GOTO EOF

:CURRENT-DIR
    CALL current-dir.bat
    GOTO :EOF

:DIR-LIST
    CALL cd-file-list.bat
    GOTO :EOF
:DIR-TXT
    CALL download-list.bat
    GOTO :EOF
:IPADDR
    CALL ip.bat
    GOTO :EOF
:BATCH-RENAME
    CALL rename.bat
    GOTO :EOF
:COM-CHECK
    echo com-check
    CALL custom-ping.bat
    GOTO :EOF

:EOF
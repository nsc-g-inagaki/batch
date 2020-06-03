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
    echo     0.  終了
    echo.

    REM 入力を待機
    
    set /p option="プログラムの番号を入力してください: "

    REM 入力されたオプションにしたがって該当する処理へ飛ばす
    IF %option%==1 GOTO :HELLO
    IF %option%==2 GOTO :CURRENT-DIR
    IF %option%==3 GOTO :DIR-LIST
    IF %option%==4 GOTO :DIR-TXT
    IF %option%==5 GOTO :IPADDR
    IF %option%==6 GOTO :BATCH-RENAME
    IF %option%==7 GOTO :COM-CHECK
    IF %option%==0 GOTO :EOF
    
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
    CALL custom-ping.bat
    GOTO :EOF

:EOF
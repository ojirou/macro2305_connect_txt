@echo off
rem -----------------------------------------------------------------------------------------------
rem HTML自動作成バッチ
rem 2007.4.22 M
rem 2007.12.16 ファイル出力先をDドライブに変更
rem 2008.9.14 Make_Flv_Db105をアレンジ
rem 2008.9.21 定型フォーマット数適正化
rem 2010.4.18 Biz用をもとにPrw用にアレンジ
rem 2010.5.2 Img用にアレンジ
rem 2023.5.5 Img2用にアレンジ Ojirou
rem
rem 第1引数に指定されたID のimgページを作成します。
rem -----------------------------------------------------------------------------------------------

rem 引数チェック
if "%~1" == "" goto END

rem バッチ実行パスの取得
rem set CURRENT_DIR=%~dps0
set CURRENT_DIR=C:\Make_Img_Db201\


rem --Main---------------------------------------------------------------------------------------------

set number_of_fmt=3
set number_cnt=1
set output_path=D:\db\img2_db

del %output_path%\%1.htm
for /f "tokens=*" %%i in (%CURRENT_DIR%data\value\%1.txt) do (
rem コンテンツ部分
	type %CURRENT_DIR%data\format\main\00!number_cnt!.fmt>>%output_path%\%1.htm
	set /p x=%%i<NUL>>%output_path%\%1.htm
	set /a number_cnt=!number_cnt!+1
	if !number_cnt! GTR !number_of_fmt! (
		set number_cnt=1)
)
rem コンテンツの最後の定型文
type %CURRENT_DIR%data\format\main\00!number_of_fmt!.fmt>>%output_path%\%1.htm

rem --Top---------------------------------------------------------------------------------------------

set number_of_fmt=11
set number_cnt=1
set output_path=D:\db\img2_db

del %output_path%\%1_top.htm
for /f "tokens=*" %%i in (%CURRENT_DIR%data\value\%1_top.txt) do (
rem コンテンツ部分
	type %CURRENT_DIR%data\format\top\00!number_cnt!.fmt>>%output_path%\%1_top.htm
	set /p x=%%i<NUL>>%output_path%\%1_top.htm
	set /a number_cnt=!number_cnt!+1
	if !number_cnt! GTR !number_of_fmt! (
		set number_cnt=1)
)
rem コンテンツの最後の定型文
type %CURRENT_DIR%data\format\top\00!number_of_fmt!.fmt>>%output_path%\%1_top.htm

rem --Bottom---------------------------------------------------------------------------------------------

set number_of_fmt=11
set number_cnt=1
set output_path=D:\db\img2_db

del %output_path%\%1_bottom.htm
for /f "tokens=*" %%i in (%CURRENT_DIR%data\value\%1_bottom.txt) do (
rem コンテンツ部分
	type %CURRENT_DIR%data\format\bottom\00!number_cnt!.fmt>>%output_path%\%1_bottom.htm
	set /p x=%%i<NUL>>%output_path%\%1_bottom.htm
	set /a number_cnt=!number_cnt!+1
	if !number_cnt! GTR !number_of_fmt! (
		set number_cnt=1)
)
rem コンテンツの最後の定型文
type %CURRENT_DIR%data\format\bottom\00!number_of_fmt!.fmt>>%output_path%\%1_bottom.htm
rem -----------------------------------------------------------------------------------------------
:END
@echo on

@echo off
rem -----------------------------------------------------------------------------------------------
rem HTML�����쐬�o�b�`
rem 2007.4.22 M
rem 2007.12.16 �t�@�C���o�͐��D�h���C�u�ɕύX
rem 2008.9.14 Make_Flv_Db105���A�����W
rem 2008.9.21 ��^�t�H�[�}�b�g���K����
rem 2010.4.18 Biz�p�����Ƃ�Prw�p�ɃA�����W
rem 2010.5.2 Img�p�ɃA�����W
rem 2023.5.5 Img2�p�ɃA�����W Ojirou
rem
rem ��1�����Ɏw�肳�ꂽID ��img�y�[�W���쐬���܂��B
rem -----------------------------------------------------------------------------------------------

rem �����`�F�b�N
if "%~1" == "" goto END

rem �o�b�`���s�p�X�̎擾
rem set CURRENT_DIR=%~dps0
set CURRENT_DIR=C:\Make_Img_Db201\


rem --Main---------------------------------------------------------------------------------------------

set number_of_fmt=3
set number_cnt=1
set output_path=D:\db\img2_db

del %output_path%\%1.htm
for /f "tokens=*" %%i in (%CURRENT_DIR%data\value\%1.txt) do (
rem �R���e���c����
	type %CURRENT_DIR%data\format\main\00!number_cnt!.fmt>>%output_path%\%1.htm
	set /p x=%%i<NUL>>%output_path%\%1.htm
	set /a number_cnt=!number_cnt!+1
	if !number_cnt! GTR !number_of_fmt! (
		set number_cnt=1)
)
rem �R���e���c�̍Ō�̒�^��
type %CURRENT_DIR%data\format\main\00!number_of_fmt!.fmt>>%output_path%\%1.htm

rem --Top---------------------------------------------------------------------------------------------

set number_of_fmt=11
set number_cnt=1
set output_path=D:\db\img2_db

del %output_path%\%1_top.htm
for /f "tokens=*" %%i in (%CURRENT_DIR%data\value\%1_top.txt) do (
rem �R���e���c����
	type %CURRENT_DIR%data\format\top\00!number_cnt!.fmt>>%output_path%\%1_top.htm
	set /p x=%%i<NUL>>%output_path%\%1_top.htm
	set /a number_cnt=!number_cnt!+1
	if !number_cnt! GTR !number_of_fmt! (
		set number_cnt=1)
)
rem �R���e���c�̍Ō�̒�^��
type %CURRENT_DIR%data\format\top\00!number_of_fmt!.fmt>>%output_path%\%1_top.htm

rem --Bottom---------------------------------------------------------------------------------------------

set number_of_fmt=11
set number_cnt=1
set output_path=D:\db\img2_db

del %output_path%\%1_bottom.htm
for /f "tokens=*" %%i in (%CURRENT_DIR%data\value\%1_bottom.txt) do (
rem �R���e���c����
	type %CURRENT_DIR%data\format\bottom\00!number_cnt!.fmt>>%output_path%\%1_bottom.htm
	set /p x=%%i<NUL>>%output_path%\%1_bottom.htm
	set /a number_cnt=!number_cnt!+1
	if !number_cnt! GTR !number_of_fmt! (
		set number_cnt=1)
)
rem �R���e���c�̍Ō�̒�^��
type %CURRENT_DIR%data\format\bottom\00!number_of_fmt!.fmt>>%output_path%\%1_bottom.htm
rem -----------------------------------------------------------------------------------------------
:END
@echo on

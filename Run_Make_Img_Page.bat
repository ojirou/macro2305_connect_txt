@echo off
rem -----------------------------------------------------------------------------------------------
@rem HTML自動作成バッチ
@rem 2007.4.22 M
@rem 2008.9.14 Run_Make_Biz_Page.batをアレンジ　M
@rem 2010.5.2 Run_Make_Prw_Page.batをアレンジ　M
@rem 2010.5.2 Run_Make_Prw_Page.batをアレンジ　M
@rem 2023.5.5 Run_Make_Img_Page.batをアレンジ　Ojirou
@rem 画像データベースページ用HTMLを作成します。
rem -----------------------------------------------------------------------------------------------

call Make_Img_Page.bat 00001
call Make_Img_Page.bat 00002
call Make_Img_Page.bat 00003

@echo on

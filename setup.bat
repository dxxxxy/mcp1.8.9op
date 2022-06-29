@echo off
echo Setup ^> Decompiling
call decompile.bat

echo Setup ^> Fixing src
powershell -Command "(gc src\minecraft\net\minecraft\world\gen\structure\StructureMineshaftPieces.java) -replace 'lvt_5_1_', 'k' | Out-File -encoding ASCII src\minecraft\net\minecraft\world\gen\structure\StructureMineshaftPieces.java"

echo Setup ^> Recompiling
call updatemd5.bat

echo Setup ^> Removing mc src
del /s /q src\minecraft\*
rmdir /s /q src\minecraft\net

echo Setup ^> Copying op src
xcopy /e /i /y op\* src\minecraft

echo Setup ^> Done, should be OK
pause
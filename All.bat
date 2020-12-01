Set Audience=_Tutor

REM Set FileName=Cambridge_Pure_Mathematics_3_Practice_Workbook
REM Set FileName=Cambridge_Pure_Mathematics_3_Practice_Workbook
REM Set FileCheck=Temp.pdf
Set File=Cambridge_Pure_Mathematics_3_Practice_Workbook
Set File=	

ren call housekeep.bat


call GenPDF  Past_Papers_Cambridge_Biology_9700_Paper1
call GenPDF  Past_Papers_Cambridge_Biology_9700_Paper2
call GenPDF  Past_Papers_Cambridge_Biology_9700_Paper3
exit

call GenPdf  Past_Papers_Cambridge_Pure_Math1_9709
call GenPdf  Past_Papers_Cambridge_Pure_Math3_9709


call GenPdf  Past_Papers_Cambridge_Statistics1_9709
call GenPdf  Past_Papers_Cambridge_Statistics2_9709


call GenPDF  Past_Papers_Cambridge_Biology_9700
call GenPDF  Past_Papers_Cambridge_Biology_9700_Paper1
call GenPDF  Past_Papers_Cambridge_Biology_9700_Paper2
call GenPDF  Past_Papers_Cambridge_Biology_9700_Paper3

call GenPDF  Past_Papers_Cambridge_Chemistry_9701
call GenPDF  Past_Papers_Cambridge_Physics_AS_9702

call GenPDF  Past_Papers_IB_Math_HL_Option

call GenPDF  Past_Papers_IB_Math_FURHL
call GenPDF  Past_Papers_IB_Math_FURSL
call GenPDF  Past_Papers_IB_Math_SDSL


call GenPDF  Past_Papers_IB_Math_HL
call GenPDF  Past_Papers_IB_Math_SL

call GenPDF  Past_Papers_Cambridge_IGCSE_Math_0606
call GenPdf  Past_Papers_Cambridge_IGCSE_Math_0580_Extended



call GenPDF  Past_Papers_NCEA_Level_3_Calculus
call GenPdf  Past_Papers_NCEA_Level_2_Math



call GenPdf  Past_Papers_NCEA_Level_2_Math


call GenPdf  Cambridge_Pure_Mathematics_1_Practice_Workbook
call GenPdf  Cambridge_Pure_Mathematics_3_Practice_Workbook
 
exit



call GenPdf %File%


REM call GenPdf  %FileName%

Copy %FileName%.pdf %FileCheck%





call GenPDF Cambridge_Pure_Mathematics_1_Practice_Workbook

call Cambridge_Pure_Mathematics_1_Practice_Workbook.pdf
call GenPDF Cambridge_Pure_Mathematics_3_Practice_Workbook

call GenPdf  Math_Year07
call GenPdf  Math_Year08
call GenPdf  Math_Year09
call GenPdf  Math_Year10

call GenPdf  Math_Year11_Cambridge_IGCSE
call GenPdf  Math_Year12_Cambridge_AS_PureMaths
call GenPdf  Math_Year12_Cambridge_AS_Statistics
call GenPdf  Math_Year13_Cambridge_A2_PureMaths

call GenPdf  Cambridge_PureMath1_9709_Past_Papers
call GenPdf  Cambridge_Statistics1_9709_Past_Papers
call GenPdf  Cambridge_A2_9709_PureMath3_Statistics2_Past_Papers
call GenPdf  Math_Year13_Cambridge_A2_Statistics2

call GenPdf  Math_Year11_NCEA
call GenPdf  Math_Year13_NCEA_Calculus
call GenPdf  Math_Year13_NCEA_Statistics

call GenPdf  MathNote
call GenPdf  Test


rem call Housekeep.bat







REM rxrepl -f structure.tex -s togglefalse{bAnswer} -r toggletrue{bAnswer} -o structure_temp.tex
REM copy /y structure_temp.tex structure.tex

REM copy /y %File%.tex %File%_Tutor.tex

REM call GenPDf %File%_Tutor

REM %File%_Tutor.pdf

REM exit 

rxrepl -f structure.tex -s togglefalse{bAnswer} -r toggletrue{bAnswer} -o structure_temp.tex
copy /q structure_temp.tex structure.tex

copy /q %File%.tex %File%_Tutor.tex

call GenPDf %File%_Tutor

rxrepl -f structure.tex -s toggletrue{bAnswer} -r togglefalse{bAnswer} -o structure_temp.tex
copy /q structure_temp.tex structure.tex


call GenPDf %File%

exit




cd pdf 

call Cambridge_Pure_Mathematics_1_Practice_Workbook.pdf



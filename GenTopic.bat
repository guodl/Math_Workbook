



REM ----------------------------------------------------------------
REM 
REM 
REM
REM 
REM 
REM
REM ----------------------------------------------------------------




perl -pe "s/toggletrue{bSolution}/togglefalse{bSolution}/g; s/toggletrue{bAnswer}/togglefalse{bAnswer}/g" structure.tex > structure_temp.tex

perl -pe "s/MathTopicDynamic.tex/%1/g; s/structure.tex/structure_temp.tex/g" VarMath.tex > zz%1_A.tex


call GenPDF_Basic zz%1_A

set "tmptime=%time: =0%"
set "hhmm=%tmptime:~0,2%%tmptime:~3,2%"

set mydate=%date:~10,4%.%date:~7,2%.%date:~4,2%_%hhmm%
echo %mydate%


copy /y  zz%1_A.pdf  D:\Document\pdf\%1_A.pdf
copy /y  zz%1_A.pdf  D:\Document\pdf\Backup\%1_A_%mydate%.pdf

start "" "D:\Document\pdf\Backup\%1_A_%mydate%.pdf"



REM ----------------------------------------------------------------
REM 
REM 
REM
REM 
REM 
REM
REM ----------------------------------------------------------------

perl -pe "s/togglefalse{bSolution}/toggletrue{bSolution}/g; s/togglefalse{bAnswer}/toggletrue{bAnswer}/g" structure.tex > structure_temp_ms.tex

 perl -pe "s/MathTopicDynamic.tex/%1/g; s/structure.tex/structure_temp_ms.tex/g" VarMath.tex > zz%1_B


call GenPDF_Basic zz%1_B

set "tmptime=%time: =0%"
set "hhmm=%tmptime:~0,2%%tmptime:~3,2%"

set mydate=%date:~10,4%.%date:~7,2%.%date:~4,2%_%hhmm%
echo %mydate%


copy /y zz%1_B.pdf D:\Document\pdf\%1_B.pdf
copy /y zz%1_B.pdf D:\Document\pdf\Backup\%1_B_%mydate%.pdf


start "" "D:\Document\pdf\Backup\%1_B_%mydate%.pdf"





del  zz%1.*
del  zz%1_ms.*


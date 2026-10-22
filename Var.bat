set "tmptime=%time: =0%"
set "hhmm=%tmptime:~0,2%%tmptime:~3,2%"
set mydate=%date:~10,4%.%date:~7,2%.%date:~4,2%_%hhmm%

copy /y D:\Document\pdf\%1.pdf D:\Document\pdf\%1_%mydate%.pdf


perl -pe "s/toggletrue{bSolution}/togglefalse{bSolution}/g; s/toggletrue{bAnswer}/togglefalse{bAnswer}/g" structure.tex > structure_temp.tex


perl -pe "s/MathTopicDynamic.tex/%1.tex/g; s/structure.tex/structure_temp.tex/g" Var.tex > zz%1.tex


call GenPDF_Basic zz%1


set "tmptime=%time: =0%"
set "hhmm=%tmptime:~0,2%%tmptime:~3,2%"

set mydate=%date:~10,4%.%date:~7,2%.%date:~4,2%_%hhmm%
echo %mydate%

set mydate1=%date:~10,4%%date:~7,2%%date:~4,2%
echo %mydate1%



copy /y zz%1.pdf D:\Document\pdf\%1_%mydate%.pdf

copy /y zz%1.pdf D:\Document\pdf\%1.pdf


start "" D:\Document\pdf\%1_%mydate%.pdf


REM del zz%1.*



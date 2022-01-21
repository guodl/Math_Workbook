
REM Set FileName="\def\CurrentAudience{Student}\input{%1}"


echo %FileName%


pdflatex  --shell-escape  --extra-mem-bot=30000000 -jobname %1 %1
pdflatex  --shell-escape  --extra-mem-bot=30000000 -jobname %1 %1



makeindex %1.idx    -s StyleInd.ist

biber     %1
pdflatex --shell-escape --extra-mem-bot=30000000  %1   x 2 
pdflatex --shell-escape --extra-mem-bot=30000000  %1   x 2 


rem call MoveFile.bat


REM Set a="\def\CurrentAudience{tutor}\input %1"
REM echo a
REM pdflatex  %1  "\def\CurrentAudience{tutor}\input test/sample"
REM makeindex %1.idx    -s StyleInd.ist

REM biber     %1
REM pdflatex  %1   x 2


REM copy %1.pdf pdf\material\%1_Tutor.pdf

REM pdflatex  %1 "\def\CurrentAudience{parent}\input test/sample"
REM makeindex %1.idx    -s StyleInd.ist

REM biber     %1
REM pdflatex  %1   x 2


REM copy %1.pdf pdf\material\%1_Parent.pdf


REM pdflatex -jobnane %1_Student "\def\CurrentAudience{student}\input{file}"
REM makeindex %1_Student.idx  -s StyleInd.ist


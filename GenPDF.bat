call GenPDF_Basic %1



REM -----------------------------------------------------------------------------------------------------------------
REM
REM 
REM
REM 
REM
REM 
REM -----------------------------------------------------------------------------------------------------------------
 
REM rxrepl -f structure.tex            -s toggletrue{bQuestion}          -r togglefalse{bQuestion}     -o     structure_tempA.tex
REM rxrepl -f structure_TempA.tex      -s togglefalse{bAnswer}           -r toggletrue{bAnswer}        -o     structure_temp.tex
REM rxrepl -f %1.tex                   -s input{structure}               -r input{structure_temp}      -o     %1_ms.tex

REM call GenPDF_Basic %1_ms


rxrepl -f structure.tex            -s togglefalse{bQuestion}         -r toggletrue{bQuestion}     -o     structure_tempA.tex
rxrepl -f structure_tempA.tex      -s togglefalse{bAnswer}           -r toggletrue{bAnswer}       -o     structure_temp.tex
rxrepl -f %1.tex                   -s input{structure}               -r input{structure_temp}     -o     %1_qp_ms.tex

call GenPDF_Basic %1_qp_ms



del /q %1_ms.tex
del /q %1_qp_ms.tex

del /q structure_temp*.tex









call GenPDF_Basic %1


rxrepl -f structure.tex         -s togglefalse{bAnswer}           -r toggletrue{bAnswer}     -o     structure_temp.tex
rxrepl -f %1.tex                -s input{structure}               -r input{structure_temp}   -o     %1_Answer.tex

call GenPDF_Basic %1_Answer

del /q %1_Answer.tex
del /q structure_temp.tex









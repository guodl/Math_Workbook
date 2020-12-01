Set File1=math_workbook

rxrepl -f structure.tex               -s togglefalse{biPrintOnly}           -r toggletrue{biPrintOnly}     -o     structure_temp.tex
rxrepl -f %File1%.tex                 -s input{structure}                   -r input{structure_temp}       -o     %File1%_Print.tex


call GenPDF_Basic %File1%_Print

del /q %File1%_Print.tex
del /q structure_temp.tex


call GenPDF math_workbook




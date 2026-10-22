

perl -pe "s/toggletrue{bSolution}/togglefalse{bSolution}/g; s/toggletrue{bAnswer}/togglefalse{bAnswer}/g" structure.tex > structure_temp.tex

perl -pe "s/MathTopicDynamic.tex/%1.tex/g; s/structure.tex/structure_temp.tex/g" VarLua.tex > VarLua_QP.tex


call GenLua_Basic VarLua_QP


if not exist "D:\Document\pdf\%1_%mydate%_qp.pdf" (
    copy D:\Document\pdf\%1.pdf D:\Document\pdf\%1_%mydate%.pdf
)

move /y VarLua_QP.pdf D:\Document\pdf\%1.pdf




perl -pe "s/togglefalse{bSolution}/toggletrue{bSolution}/g; s/togglefalse{bAnswer}/toggletrue{bAnswer}/g" structure.tex > structure_temp_ms.tex

perl -pe "s/MathTopicDynamic.tex/%1.tex/g; s/structure.tex/structure_temp_ms.tex/g" VarLua.tex > VarLua_MS.tex


call GenLua_Basic VarLua_MS




set mydate=%date:~10,4%.%date:~7,2%.%date:~4,2%
echo %mydate%

if not exist "D:\Document\pdf\%1_%mydate%_ms.pdf" (
    copy "D:\Document\pdf\%1_ms.pdf" "D:\Document\pdf\%1_%mydate%_ms.pdf"
)



move /y VarLua_MS.pdf D:\Document\pdf\%1_ms.pdf







@echo ** Frank A Titze          **
@echo ** Bachelorarbeit Vorlage **
@echo ****************************
@echo Alles kompilieren und aufräumen
@echo ****************************
pdflatex -interaction=nonstopmode Vorlage_BA2_by.fat.tex
bibtex Vorlage_BA2_by.fat
pdflatex -interaction=nonstopmode Vorlage_BA2_by.fat.tex
bibtex Vorlage_BA2_by.fat
pdflatex -interaction=nonstopmode Vorlage_BA2.tex
makeindex -s Vorlage_BA2_by.fat.ist -t Vorlage_BA2_by.fat.glg -o Vorlage_BA2_by.fat.gls Vorlage_BA2_by.fat.glo
pdflatex -interaction=nonstopmode Vorlage_BA2_by.fat.tex
pdflatex -interaction=nonstopmode Vorlage_BA2_by.fat.tex
@del *.aux
@del *.lof
@del *.lot
@del *.out
@del *.toc
@del *.bbl
@del *.blg
@del *.brf
@del *.idx
@del *.glo
@del *.ist
@del *.glg
@del *.gls
@del texput.log
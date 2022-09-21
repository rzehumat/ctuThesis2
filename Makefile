# TODO: when do we need to run pdflatex twice and when is one enough?
# Do we need all the files / haven't we forgotten any?
# e.g. shouldn't we utilize some aux files?
# could we utilize pdflatex -draftmode for faster compilation?
main.pdf: main.tex ctuThesis2.cls addons/* img/* chapters/* main.bbl main.bcf main.blg
	pdflatex main
	pdflatex main

# Do we really need all these three?
main.blg main.bbl: ref.bib main.aux main.bcf
	pdflatex main
	biber main

main.aux: main.tex chapters/* addons/* img/*
	pdflatex main


clean:
	rm main.aux
	rm main.bbl
	rm main.bcf
	rm main.blg
	rm main.lof
	rm main.log
	rm main.out
	rm main.run.xml
	rm main.toc
	rm texput.log
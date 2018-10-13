build:
	docker build -t latex-image .
	cp build.sh ./friggeri-cv-a4/
	cp waltercv.tex ./friggeri-cv-a4/cv.tex
	docker run \
		--rm=true \
		--name latex-container \
		--user="$(id -u):$(id -g)" \
		-i \
		-t \
		-v `pwd`/friggeri-cv-a4:/data \
		latex-image \
		./build.sh
	cp ./friggeri-cv-a4/cv.pdf waltercv.pdf
	cp ./friggeri-cv-a4/cv-print.pdf waltercv-print.pdf
	(cd friggeri-cv-a4 && git checkout . && git clean -xdf)

clean:
	rm \
		waltercv.aux \
		waltercv.bcf \
		waltercv.log \
		waltercv.out \
		waltercv-print.log \
		waltercv-print.tex \
		waltercv.bbl \
		waltercv.bcf \
		waltercv.run.xml
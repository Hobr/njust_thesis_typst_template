build:
	typst compile --root=. --font-path=./font template/thesis.typ

watch:
	typst watch --root=. --font-path=./font template/thesis.typ

fmt:
	typstyle -c 120  -i **/**.typ

thumbnail:
	typst compile --root=. --font-path=./font template/thesis.typ --format=png ./thumbnail{n}.png
	mv thumbnail1.png dist.png
	rm thumbnail*.png
	mv dist.png thumbnail.png

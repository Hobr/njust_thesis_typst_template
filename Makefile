build:
	typst compile --font-path ./font thesis.typ

watch:
	typst watch --font-path ./font thesis.typ

fmt:
	typstyle -i *.typ

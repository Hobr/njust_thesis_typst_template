build:
	typst compile thesis.typ

watch:
	typst watch thesis.typ

fmt:
	typstfmt *.typ

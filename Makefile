build:
	typst compile --root ./ --font-path ./font template/thesis.typ

watch:
	typst watch --root ./ --font-path ./font template/thesis.typ

fmt:
	typstyle -i *.typ

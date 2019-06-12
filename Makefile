SVG_FILES := $(wildcard svg/*.svg)
THUMBNAILS := $(patsubst svg/%.svg,thumbs/%.jpg,$(SVG_FILES))

all: $(THUMBNAILS) README.md

README.md: README.md.mako
	./mako README.md.mako README.md

thumbs/%.png: svg/%.svg
	inkscape $< --export-background white --export-png $@

thumbs/%.jpg: thumbs/%.png
	convert $< -resize x100 $@

.PHONY: all minify clean

## minify command is github.com/tdewolff/minify/cmd/minify

minify: clean
	minify -o out -a -r assets
	cat out/css/*.css >| static/css/all.min.css
	cat out/js/*.js >| static/js/all.min.js

clean:
	/bin/rm -rf out


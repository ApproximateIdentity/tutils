all: uninstall install

uninstall:
	R -e "remove.packages(\"tutils\")"

install:
	R -e "options(repos=structure(c(CRAN=\"http://cran.us.r-project.org\")));  library(devtools);  install();"

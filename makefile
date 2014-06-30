RMD_FILES  = $(wildcard */*.Rmd)
MD_FILES  = $(patsubst %.Rmd, %.md, $(RMD_FILES))
IPYNB_FILES  = $(patsubst %.Rmd, %.ipynb, $(RMD_FILES))

USER = ramnathv
REPO = user2014-idocs

files:
	@echo $(MD_FILES)

serve: $(MD_FILES)
	gitbook serve

book: $(MD_FILES)
	gitbook build

md: $(MD_FILES)

ipynb: $(IPYNB_FILES)

%.md: %.Rmd
	Rscript -e "library(methods);devtools::in_dir(dirname('$^'), knitr::knit(basename('$^')))"

# %.ipynb: %.Rmd
#	notedown $^ > $@

%.ipynb: %.Rmd
	cd $(dir $^) && \
	Rscript -e "library(methods);library(knitr);opts_chunk[['set']](eval = F); knit('$(notdir $^)', '_temp_.md');" && \
	notedown _temp_.md | sed '/%%r/d' > $(notdir $@) && \
	rm _temp_.md

publish:
	cd _book && \
	rm -rf .git && \
	git init && \
	git commit --allow-empty -m 'update book' && \
	git checkout -b gh-pages && \
	touch .nojekyll && \
	git add . && \
	git commit -am "update book" && \
	git push git@github.com:$(USER)/$(REPO) gh-pages --force

OUTDIR = out
TEX = xelatex -output-directory=$(OUTDIR)

.PHONY: all
all: $(OUTDIR)/gpontesss.pdf

$(OUTDIR)/%.pdf: %.tex | $(OUTDIR)
	@$(TEX) $< -o $@

$(OUTDIR):
	@mkdir -p $@

.PHONY: clean
clean:
	@rm -rf $(OUTDIR)

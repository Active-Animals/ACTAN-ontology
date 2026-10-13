## Customize Makefile settings for actan
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile

WEBPROTEGEDUMP=$(wildcard ../../WebProtege/*.owl)

components/actan-webprotege.owl: $(WEBPROTEGEDUMP)
	@$(ROBOT) merge -i $(WEBPROTEGEDUMP) \
		remove --term "http://www.w3.org/1999/02/22-rdf-syntax-ns#type" --axioms all \
		annotate --ontology-iri $(ONTBASE)/$@ \
		convert -f ofn -o $@

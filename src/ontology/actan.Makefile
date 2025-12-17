## Customize Makefile settings for actan
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile

WEBPROTEGEDUMP=../../WebProtege/urn_webprotege_ontology_c71f4e94-c89d-437b-8478-b7c3617c0d77.owl

components/actan-webprotege.owl: $(WEBPROTEGEDUMP)
	@$(ROBOT) merge -i $(WEBPROTEGEDUMP) \
		annotate --ontology-iri $(ONTBASE)/$@ \
		convert -f ofn -o $@

XML2RFC=xml2rfc
RFC2TXT=$(XML2RFC) --text
RFC2HTML=$(XML2RFC) --html
SOURCES=draft-ietf-xmpp-dna.xml \
		draft-ietf-dane-srv.xml \
		draft-ietf-xmpp-posh.xml
TXT_OUTPUT=$(SOURCES:.xml=.txt)
HTML_OUTPUT=$(SOURCES:.xml=.html)
OUTPUT=$(TXT_OUTPUT) \
		$(HTML_OUTPUT)

all :	$(OUTPUT)

txtdocs : $(TXT_OUTPUT)

htmldocs : $(HTML_OUTPUT)

clearcache :
	$(XML2RFC) --clear-cache

clean :
	rm -rf $(OUTPUT)

%.html : %.xml clearcache
	$(RFC2HTML) $<

%.txt : %.xml clearcache
	$(RFC2TXT) $<

.PHONY : all txtdocs htmldocs clearcache

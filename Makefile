RFC2TXT=xml2rfc --text
RFC2HTML=xml2rfc --html
OUTPUT=draft-saintandre-xmpp-dna.txt draft-saintandre-xmpp-dna.html \
		draft-miller-xmpp-dnssec-prooftype.txt draft-miller-xmpp-dnssec-prooftype.html \
		draft-miller-xmpp-posh-prooftype.txt draft-miller-xmpp-posh-prooftype.html

all :	$(OUTPUT)

clean :
	rm -rf $(OUTPUT)

%.html : %.xml
	$(RFC2HTML) $<

%.txt : %.xml
	$(RFC2TXT) $<

.PHONY : all

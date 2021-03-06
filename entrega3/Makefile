# Unix makefile for tigermain example

HOME=/usr/bin
MOSMLHOME=${HOME}
MOSMLTOOLS=camlrunm /usr/share/mosml/tools
MOSMLLEX=mosmllex
MOSMLYACC=mosmlyac -v

GCC=gcc
CFLAGS= -g
MOSMLC=${MOSMLHOME}/mosmlc -c -liberal
MOSMLL=${MOSMLHOME}/mosmlc

# Unix
REMOVE=rm -f
MOVE=mv
EXEFILE=

# DOS
#REMOVE=del
#MOVE=move
#EXEFILE=.exe

.SUFFIXES :
.SUFFIXES : .sig .sml .ui .uo

GRALOBJS= tigerabs.uo tigergrm.uo tigerlex.uo tigercanon.uo \
	tigernlin.uo tigerpp.uo tigerescap.uo tigertab.uo tigertopsort.uo tigerseman.uo tigertemp.uo  tigertree.uo \
	tigermuestratipos.uo tigerframe.uo tigertrans.uo tigerit.uo tigerpila.uo tigerinterp.uo \
	tigerassem.uo tigercodegen.uo tigergraph.uo tigerflowgraph.uo tigerliveness.uo tigercolor.uo\
	tigermain.uo
#tigerfold.uo

all: tiger

tiger: $(GRALOBJS) $(OBJSGEN)
	$(MOSMLL) -o tiger $(EXEFILE) tigermain.uo

tigergrm.sml tigergrm.sig: tigergrm.y
	$(MOSMLYACC) tigergrm.y

tigerlex.sml: tigerlex.lex
	$(MOSMLLEX) tigerlex.lex

clean:
	$(REMOVE) Makefile.bak
	$(REMOVE) tigergrm.output
	$(REMOVE) tigergrm.sig
	$(REMOVE) tigergrm.sml
	$(REMOVE) tigerlex.sml
	$(REMOVE) tigermain
	$(REMOVE) *.ui
	$(REMOVE) *.uo
	$(REMOVE) errlist
	$(REMOVE) *.o

.sig.ui:
	$(MOSMLC) $<

.sml.uo:
	$(MOSMLC) $<

depend: tigerabs.sml tigergrm.sml tigerlex.sml tigermain.sml \
	tigernlin.sml tigerpp.sml
	$(REMOVE) Makefile.bak
	$(MOVE) Makefile Makefile.bak
	$(MOSMLTOOLS)/cutdeps < Makefile.bak > Makefile
	$(MOSMLTOOLS)/mosmldep >> Makefile

### DO NOT DELETE THIS LINE
tigertrans.ui: tigertree.uo tigerframe.ui tigertemp.ui tigerabs.uo 
tigertopsort.ui: tigertab.ui tigertips.uo tigerabs.uo 
tigermuestratipos.ui: tigertips.uo 
tigercanon.ui: tigertree.uo tigertemp.ui 
tigerframe.ui: tigertree.uo tigerassem.uo tigertemp.ui 
tigergraph.uo: tigergraph.ui tigertemp.ui 
tigerseman.uo: tigerseman.ui tigersres.uo tigertab.ui tigerpila.ui \
    tigertopsort.ui tigertemp.ui tigerabs.uo tigertrans.ui 
tigerinterp.ui: tigertree.uo tigerframe.ui tigertemp.ui 
tigerescap.ui: tigerabs.uo 
tigercodegen.uo: tigertree.uo tigerframe.ui tigerassem.uo tigertemp.ui 
tigerliveness.ui: tigergraph.ui tigertemp.ui tigerflowgraph.ui 
tigergrm.uo: tigergrm.ui tigernlin.uo tigerabs.uo 
tigertrans.uo: tigertrans.ui tigertree.uo tigerpila.ui tigerframe.ui \
    tigerit.uo tigertemp.ui tigerabs.uo 
tigerit.uo: tigertree.uo tigertab.ui 
tigerpila.uo: tigerpila.ui 
tigermuestratipos.uo: tigermuestratipos.ui tigertips.uo 
tigerseman.ui: tigerabs.uo 
tigerframe.uo: tigerframe.ui tigertree.uo tigertemp.ui 
tigercolor.uo: tigercolor.ui tigergraph.ui tigerframe.ui 
tigersimpleregalloc.uo: tigersimpleregalloc.ui tigerassem.uo 
tigercanon.uo: tigercanon.ui tigertree.uo tigertab.ui tigertemp.ui 
tigerassem.uo: tigertab.ui tigertemp.ui 
tigerflowgraph.ui: tigergraph.ui tigerassem.uo tigertemp.ui 
tigertree.uo: tigertemp.ui 
tigersimpleregalloc.ui: tigerframe.ui tigerassem.uo 
tigertopsort.uo: tigertopsort.ui tigertab.ui tigertips.uo tigerabs.uo 
tigerpp.uo: tigerabs.uo 
tigermain.uo: tigerseman.ui tigercodegen.uo tigertab.ui tigerescap.ui \
    tigergrm.ui tigerframe.ui tigerit.uo tigercanon.ui tigerassem.uo \
    tigerinterp.ui tigerlex.uo tigerflowgraph.ui tigerliveness.ui \
    tigertrans.ui tigerpp.uo 
tigertab.uo: tigertab.ui 
tigergrm.ui: tigerabs.uo 
tigerfold.ui: tigertree.uo 
tigercolor.ui: tigergraph.ui tigerframe.ui tigerassem.uo tigertemp.ui \
    tigerliveness.ui 
tigerescap.uo: tigerescap.ui tigertab.ui tigerabs.uo 
tigersres.uo: tigertab.ui tigertips.uo tigertemp.ui tigerabs.uo \
    tigertrans.ui 
tigertemp.uo: tigertemp.ui 
tigerlex.uo: tigergrm.ui tigernlin.uo 
tigerliveness.uo: tigerliveness.ui tigergraph.ui tigertemp.ui \
    tigerflowgraph.ui 
tigerflowgraph.uo: tigerflowgraph.ui tigertab.ui tigergraph.ui \
    tigerassem.uo tigertemp.ui 
tigerfold.uo: tigerfold.ui tigertree.uo 
tigerinterp.uo: tigerinterp.ui tigertree.uo tigertab.ui tigerframe.ui \
    tigerit.uo tigertemp.ui 

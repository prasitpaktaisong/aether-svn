
COMMON_OBJ = ../common/obj_all/minicore.o ../common/obj_all/malloc.o \
	../common/obj_all/showmsg.o ../common/obj_all/strlib.o \
	../common/obj_all/utils.o ../common/obj_all/grfio.o
COMMON_H = ../common/core.h ../common/mmo.h ../common/version.h \
	../common/malloc.h ../common/showmsg.h ../common/strlib.h \
	../common/utils.h ../common/cbasetypes.h ../common/grfio.h

MAPCACHE_OBJ = obj_all/mapcache.o



#####################################################################
.PHONY : all mapcache clean help

all: mapcache

mapcache: obj_all $(MAPCACHE_OBJ) $(COMMON_OBJ)
	gcc  -L/usr/local/lib -o ../../mapcache $(MAPCACHE_OBJ) $(COMMON_OBJ) -lrt -lm -lz  -ldl

clean:
	rm -rf obj_all/*.o ../../mapcache

help:
	@echo "possible targets are 'mapcache' 'all' 'clean' 'help'"
	@echo "'mapcache'  - mapcache generator"
	@echo "'all'       - builds all above targets"
	@echo "'clean'     - cleans builds and objects"
	@echo "'help'      - outputs this message"

#####################################################################

obj_all:
	-mkdir obj_all

obj_all/%.o: %.c $(COMMON_H)
	gcc -g -O2 -pipe -ffast-math -Wall -Wno-sign-compare -Wno-unused-parameter -Wno-pointer-sign -Wno-switch -DHAVE_SETRLIMIT -Wno-unused -Wno-parentheses  -L/usr/local/lib  -I../common -I/usr/local/include -c $(OUTPUT_OPTION) $<

# missing common object files
../common/obj_all/%.o:
	@$(MAKE) -C ../common txt

../common/obj_all/mini%.o:
	@$(MAKE) -C ../common txt

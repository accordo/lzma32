MY_STATIC_LINK=1
PROG = LZMAc.exe

CFLAGS = $(CFLAGS) \

LIB_OBJS = \
  $O\LzmaUtil.obj \

C_OBJS = \
  $O\Alloc.obj \
  $O\LzFind.obj \
  $O\LzFindMt.obj \
  $O\LzmaDec.obj \
  $O\LzmaEnc.obj \
  $O\7zFile.obj \
  $O\7zStream.obj \
  $O\Threads.obj \

OBJS = \
  $(LIB_OBJS) \
  $(C_OBJS) \

!include "Build.mak"

$(LIB_OBJS): $(*B).c
	$(COMPL_O2)
$(C_OBJS): liblzma/$(*B).c
	$(COMPL_O2)

PREPROCESSOR = ""

viewer: main.o doc.o merge.o sign.o edit.o
	clang main.o doc.o merge.o sign.o edit.o /u2/cs136l/pub/common/cs136.o -o viewer -std=c99 -g -Wall ${PREPROCESSOR}

doc.o: doc.c doc.h
	clang -c doc.c ${PREPROCESSOR}

edit.o: doc.h edit.h edit.c
	clang -c edit.c ${PREPROCESSOR}

merge.o: merge.h merge.c
	clang -c merge.c ${PREPROCESSOR}

sign.o: sign.h sign.c doc.h
	clang -c sign.c ${PREPROCESSOR}

main.o: main.c doc.h merge.h sign.h edit.h /u2/cs136l/pub/common/cs136.h
	clang -c main.c -I/u2/cs136l/pub/common ${PREPROCESSOR}
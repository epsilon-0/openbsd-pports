MYDIRS =
MYDIRS += devel
MYDIRS += math
MYDIRS += net
MYDIRS += sysutils
MYDIRS += textproc
MYDIRS += www

${.TARGETS}:
.for MDIR in ${MYDIRS}
	${MAKE} -C ${MDIR} ${.TARGETS}
.endfor

COMMENT = 		zoxide is a smarter cd command

DIST_TUPLE = 		github ajeetdsouza zoxide v0.9.4 .

CATEGORIES = 		sysutils

MAINTAINER = 		Neel Chakraborty <neelroboinfo365@gmail.com>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB = 		${MODCARGO_WANTLIB}

MODULES = 		devel/cargo

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	cargo

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/man1/zoxide.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/man/man1/zoxide-add.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/man/man1/zoxide-import.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/man/man1/zoxide-init.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/man/man1/zoxide-query.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/man/man1/zoxide-remove.1 ${PREFIX}/man/man1/


.include "crates.inc"

.include <bsd.port.mk>

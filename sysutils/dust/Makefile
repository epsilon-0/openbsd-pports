COMMENT	=	 du but more intuitive

DIST_TUPLE	=	github bootandy dust v1.1.1 .

CATEGORIES	=	sysutils

MAINTAINER	=	Neel Chakraborty <neelroboinfo365@gmail.com>

# Apache License 2.0
PERMIT_PACKAGE	=	Yes

WANTLIB	=	${MODCARGO_WANTLIB}

MODULES	=	devel/cargo

SEPARATE_BUILD	=	Yes

CONFIGURE_STYLE	=	cargo

post-install:
	${INSTALL_MAN} ${WRKSRC}/man-page/*.1 ${PREFIX}/man/man1/


.include "crates.inc"

.include <bsd.port.mk>

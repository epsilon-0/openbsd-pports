COMMENT =	ultra-lightweight blogging engine in PHP

VERSION =	2024.03

GH_ACCOUNT =	xenocrat
GH_PROJECT =	chyrp-lite
GH_TAGNAME =	v${VERSION}

CATEGORIES =	www

HOMEPAGE =	https://chyrplite.net/

MAINTAINER =	Aisha Tammy <aisha@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES=	lang/php

NO_BUILD =	Yes
NO_TEST =	Yes

PREFIX =	${VARBASE}/www
INSTDIR =	${PREFIX}/chyrp-lite
TINSTDIR =	${TRUEPREFIX}/chyrp-lite
SUBST_VARS =	INSTDIR TINSTDIR

RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-gd

do-install:
	cp -a ${WRKSRC}/. ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>

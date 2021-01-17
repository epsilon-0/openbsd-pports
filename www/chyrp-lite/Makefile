# $OpenBSD: $

COMMENT =	ultra-lightweight blogging engine in PHP

VERSION =	0.2021.01
DISTNAME =	chyrp-lite-${VERSION}
PKGNAME =	${DISTNAME:L}
CATEGORIES =	www
HOMEPAGE =	https://chyrplite.net/

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# BSD
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =	xenocrat
GH_PROJECT =	chyrp-lite
GH_TAGNAME =	v${VERSION:S/0.//g}

NO_BUILD =	Yes
NO_TEST =	Yes

MODULES=	lang/php

PREFIX =	${VARBASE}/www
INSTDIR =	${PREFIX}/chyrp-lite
TINSTDIR =	${TRUEPREFIX}/chyrp-lite
SUBST_VARS =	INSTDIR TINSTDIR

RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-gd

do-install:
	cp -Rp ${WRKDIST} ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>

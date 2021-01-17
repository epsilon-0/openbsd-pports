# $OpenBSD$

COMMENT =	self hosted personal CRM system

CATEGORIES =	productivity

VERSION =	2.19.1
GH_ACCOUNT =	monicahq
GH_PROJECT =	monica
GH_TAGNAME =	${VERSION}

HOMEPAGE =	https://www.monicahq.com/

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# GPL-3.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/php

RUN_DEPENDS =	lang/php/${MODPHP_VERSION},-curl \
		lang/php/${MODPHP_VERSION},-pdo_mysql \
		lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-gmp \
		lang/php/${MODPHP_VERSION},-intl \
		lang/php/${MODPHP_VERSION},-zip \
		lang/php/${MODPHP_VERSION},-mysqli \
		lang/php/${MODPHP_VERSION},-xmlrpc \
		graphics/pecl-imagick

		www/composer \
	
NO_TEST =	Yes
NO_BUILD =	Yes

PREFIX =	${VARBASE}
INSTDIR =	${PREFIX}/calibre-web

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -a ${WRKSRC}/cps.py ${WRKSRC}/cps ${INSTDIR}
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${INSTDIR}

.include <bsd.port.mk>


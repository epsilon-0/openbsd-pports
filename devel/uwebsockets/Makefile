# $OpenBSD $

COMMENT	=	ultra fast, simple, secure, standards compliant web I/O 

PV =		0.17.4

DISTNAME =	v${PV}
PKGNAME =	uwebsockets-${PV}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/uNetworking/uWebSockets/

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# ISC
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/uNetworking/uWebSockets/archive/

WRKDIST =	${WRKDIR}/uWebSockets-${PV}

USE_GMAKE =	Yes

BUILD_DEPENDS =	devel/usockets

NO_BUILD =	Yes

.include <bsd.port.mk>

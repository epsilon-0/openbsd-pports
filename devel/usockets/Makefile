# $OpenBSD $

COMMENT	=	eventing, networking & crypto for async applications

PV =		0.3.5

DISTNAME =	v${PV}
PKGNAME =	usockets-${PV}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/uNetworking/uSockets/

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# ISC
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/uNetworking/uSockets/archive/

WRKDIST =	${WRKDIR}/uSockets-${PV}

USE_GMAKE =	Yes

ALL_TARGET =	default

BUILD_DEPENDS 	=	devel/libuv

MAKE_FLAGS =	WITH_OPENSSL=1 WITH_LIBUV=1

CFLAGS		+= -I/usr/local/include
LDFLAGS		+= -L/usr/local/lib

SHARED_LIBS	= libusockets 0.3.5

.include <bsd.port.mk>

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

BUILD_DEPENDS =	devel/libuv

RUN_DEPENDS =	${BDEPENDS}

WANTLIBS =	uv>=2.1 \
		ssl>=48.0

MAKE_FLAGS =	WITH_OPENSSL=1 WITH_LIBUV=1

CFLAGS +=	-I/usr/local/include \
		-L/usr/local/lib \
		-luv \
		-lssl

SHARED_LIBS =	 usockets 0.3

.include <bsd.port.mk>

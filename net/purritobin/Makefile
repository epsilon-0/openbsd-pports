# $OpenBSD $

COMMENT =	minimalistic command line pastebin

PV =		0.1.1

DISTNAME =	${PV}
PKGNAME =	purritobin-${PV}

CATEGORIES =	net

HOMEPAGE =	https://bsd.ac/

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# ISC
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/PurritoBin/PurritoBin/archive/

WRKDIST =	${WRKDIR}/PurritoBin-${PV}

BUILD_DEPENDS =	devel/uwebsockets \
		devel/usockets \
		devel/libuv

RUN_DEPENDS =	${BUILD_DEPENDS}

LIB_DEPENDS =	${BUILD_DEPENDS}

WANTLIBS =	usockets>=0.3 \
		uv>=2.1

CFLAGS =	-I/usr/local/include -L/usr/local/lib
LDFLAGS =	-L/usr/local/lib

.include <bsd.port.mk>

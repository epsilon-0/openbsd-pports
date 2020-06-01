# $OpenBSD $

COMMENT =	minimalistic command line pastebin
PKGNAME =	${DISTNAME:L}
CATEGORIES =	net

GH_ACCOUNT =	PurritoBin
GH_PROJECT =	PurritoBin
GH_TAGNAME =	0.2.1

HOMEPAGE =	https://bsd.ac/
MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} c m usockets uv

# C++2a
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/uwebsockets

LIB_DEPENDS =	devel/libuv \
		devel/usockets

NO_TEST	=	Yes

MAKE_FLAGS =	-DUSE_STATIC -DUSE_LIBUV

.include <bsd.port.mk>

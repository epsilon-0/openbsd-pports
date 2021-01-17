# $OpenBSD: Makefile,v 1.5 2020/12/11 22:34:51 sthen Exp $

COMMENT	=	
CATEGORIES =	security

VERSION =	2.0.2

DISTNAME =	389-ds-base-${VERSION}
PKGNAME =	${DISTNAME:L}

SHARED_LIBS =	usockets 1.0

GH_ACCOUNT =	389ds
GH_PROJECT =	389-ds-base
GH_TAGNAME =	${DISTNAME}

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} crypto ssl uv

# C11 C++17
COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	devel/libuv

USE_GMAKE =	Yes
MAKE_FLAGS =	CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}" \
		CC="${CC}" CXX="${CXX}" \
		LIBusockets_VERSION="${LIBusockets_VERSION}"

NO_TEST =	Yes

.include <bsd.port.mk>

# $OpenBSD: $

COMMENT	=	async event loop abstraction library
CATEGORIES =	devel

VERSION =	0.3.1
DISTNAME =	libverto-${VERSION}
PKGNAME =	${DISTNAME}

MASTER_SITES =	https://github.com/latchset/libverto/releases/download/${VERSION}/

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# MIT
PERMIT_PACKAGE =	Yes

LIB_DEPENDS =	devel/glib2 devel/libev

SHARED_LIBS +=	verto-glib 0.0 # 1.0
SHARED_LIBS +=	verto-libev 0.0 # 1.0
SHARED_LIBS +=	verto 0.0 # 1.0


CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--with-glib \
			--without-libevent \
			--with-libev \
			--with-pthread \
			--without-tevent \
			--disable-static

CONFIGURE_ENV +=	CFLAGS="-I${LOCALBASE}/include/" \
			LDFLAGS="-L${LOCALBASE}/lib/"

do-test:
	cd ${WRKSRC} && env -i ${MAKE_PROGRAM} -C tests check

.include <bsd.port.mk>

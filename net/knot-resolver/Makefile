COMMENT =		scaleable caching DNS resolver

DISTNAME =		knot-resolver-6.0.7

SHARED_LIBS +=		kres	0.0	# 9

CATEGORIES =		net

HOMEPAGE =		https://www.knot-dns.cz/

MAINTAINER =		Aisha Tammy <aisha@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

#WANTLIB += c curses edit gmp gnutls hogweed iconv idn2 intl
#WANTLIB += lmdb m nettle nghttp2 p11-kit pthread tasn1 unistring urcu
#WANTLIB += urcu-common brotlidec brotlienc z zstd

SITES =			https://secure.nic.cz/files/knot-resolver/
EXTRACT_SUFX =		.tar.xz

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# atomics
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =		devel/meson \
			lang/python

LIB_DEPENDS =		devel/libuv \
			devel/protobuf-c \
			lang/luajit \
			security/gnutls \
			databases/lmdb \
			net/libfstrm \
			net/knot \
			www/nghttp2
TEST_DEPENDS =		devel/cmocka \
			shells/bash


CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

CONFIGURE_ARGS =	-Dutils=enabled \
			-Dconfig_tests=disabled \
			-Dextra_tests=enabled \
			-Dunit_tests=enabled

post-patch:
	cd ${WRKSRC} && grep -Rl /bin/bash | xargs sed -i 's|/bin/bash|/usr/bin/env bash|'


.include <bsd.port.mk>

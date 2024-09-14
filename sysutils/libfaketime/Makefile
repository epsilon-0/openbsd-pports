COMMENT =		modify the system time for a single application

CATEGORIES =		sysutils

GH_ACCOUNT =		wolfcw
GH_PROJECT =		libfaketime
GH_TAGNAME =		v0.9.10

MAINTAINER =		Aisha Tammy <aisha@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =		devel/bison
LIB_DEPENDS =		devel/gettext,-runtime \
			devel/libidn2 \
			devel/liburcu \
			security/gnutls \
			databases/lmdb \
			www/nghttp2

USE_GMAKE =		Yes

.include <bsd.port.mk>

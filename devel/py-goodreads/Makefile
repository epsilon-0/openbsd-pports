# $OpenBSD$

COMMENT =		python wrapper for goodreads API

MODPY_EGG_VERSION =	0.3.2
DISTNAME =		Goodreads-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

CATEGORIES =		www

HOMEPAGE =		https://github.com/sefakilic/goodreads/

MAINTAINER =		Aisha Tammy <openbsd@aisha.cc>

# Custom
# Binary redistribution allowed with copyright
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

RUN_DEPENDS +=		www/py-flask${MODPY_FLAVOR} \
			devel/py-babel${MODPY_FLAVOR}

MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

.include <bsd.port.mk>

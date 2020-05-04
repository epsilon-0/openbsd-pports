# $OpenBSD$

COMMENT =		ctypes-based simple imagemagick binding for python

MODPY_EGG_VERSION =	0.5.9
DISTNAME =		Wand-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

CATEGORIES =		devel

HOMEPAGE =		https://docs.wand-py.org/

MAINTAINER =		Aisha Tammy <openbsd@aisha.cc>

# Custom
# Binary redistribution allowed with copyright
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

RUN_DEPENDS +=		graphics/ImageMagick

MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

.include <bsd.port.mk>

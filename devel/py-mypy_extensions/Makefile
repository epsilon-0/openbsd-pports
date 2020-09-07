# $OpenBSD$

COMMENT =		Experimental type system extensions for programs checked

MODPY_EGG_VERSION =	0.4.3

DISTNAME =		mypy_extensions-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/python/mypy_extensions

MAINTAINER =		Aisha Tammy <openbsd@aisha.cc>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-typing

FLAVORS =		python3
FLAVOR ?=		python3

.include <bsd.port.mk>

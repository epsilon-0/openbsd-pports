# $OpenBSD$

COMMENT =		Experimental type system extensions for programs checked

MODPY_EGG_VERSION =	0.4.3

GH_ACCOUNT =		python
GH_PROJECT =		mypy_extensions
GH_TAGNAME =		${MODPY_EGG_VERSION}

DISTNAME =		mypy_extensions-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/python/mypy_extensions

MAINTAINER =		Aisha Tammy <openbsd@aisha.cc>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-typing

FLAVORS =		python3
FLAVOR ?=		python3

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest tests/testextensions.py

.include <bsd.port.mk>

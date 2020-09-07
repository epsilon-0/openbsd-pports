# $OpenBSD$

COMMENT =		Optional static typing for Python

MODPY_EGG_VERSION =	0.782

DISTNAME =		mypy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://www.mypy-lang.org/

MAINTAINER =		Aisha Tammy <openbsd@aisha.cc>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=		python3

BUILD_DEPENDS =		devel/py-mypy_extensions${MODPY_FLAVOR} \
			devel/py-typed_ast${MODPY_FLAVOR} \
			devel/py-typing-extensions${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR}

RUN_DEPENDS =		${BUILD_DEPENDS}

.include <bsd.port.mk>

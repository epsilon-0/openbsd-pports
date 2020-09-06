# $OpenBSD$

COMMENT =		18n and l10n support for Flask

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		Flask-Babel-${MODPY_EGG_VERSION}
PKGNAME =		py3-${DISTNAME:L}
CATEGORIES =		www
MODPY_PI =		Yes

HOMEPAGE =		https://github.com/python-babel/flask-babel

MAINTAINER =		Aisha Tammy <openbsd@aisha.cc>

# Custom
# Binary redistribution allowed with copyright
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=		python3

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS +=		devel/py-babel${MODPY_FLAVOR} \
			www/py-flask${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-tz${MODPY_FLAVOR}

.include <bsd.port.mk>

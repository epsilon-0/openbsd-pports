COMMENT =		18n and l10n support for Flask

MODPY_EGG_VERSION =	4.0.0

GH_ACCOUNT =		python-babel
GH_PROJECT =		flask-babel
GH_TAGNAME =		v${MODPY_EGG_VERSION}

PKGNAME =		py3-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://python-babel.github.io/flask-babel/

MAINTAINER =		Aisha Tammy <aisha@openbsd.org>

# BSD-3 like
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=		python3

MODPY_PYBUILD =		poetry-core

RUN_DEPENDS +=		devel/py-babel${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR} \
			www/py-flask${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}

.include <bsd.port.mk>

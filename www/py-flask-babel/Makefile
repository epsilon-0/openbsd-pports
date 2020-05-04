# $OpenBSD$

COMMENT =		18n and l10n support for Flask

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		Flask-Babel-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

CATEGORIES =		www

HOMEPAGE =		https://github.com/python-babel/flask-babel

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

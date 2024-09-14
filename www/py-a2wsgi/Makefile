COMMENT =		library to convert between ASGI and WSGI apps

MODPY_EGG_VERSION =	1.10.7
GH_ACCOUNT =		abersheeran
GH_PROJECT =		a2wsgi
GH_TAGNAME =		v${MODPY_EGG_VERSION}

PKGNAME =		py-a2wsgi-${MODPY_EGG_VERSION}

CATEGORIES=		www

# Apache-2.0
PERMIT_PACKAGE =	Yes

MODPY_PYBUILD =		pdm

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			www/py-baize${MODPY_FLAVOR} \
			www/py-starlette${MODPY_FLAVOR}

.include <bsd.port.mk>

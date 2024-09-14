COMMENT =		powerful and exquisite WSGI/ASGI framework/toolkit

MODPY_EGG_VERSION =	0.22.1
GH_ACCOUNT =		abersheeran
GH_PROJECT =		baize
GH_TAGNAME =		v${MODPY_EGG_VERSION}

PKGNAME =		py-baize-${MODPY_EGG_VERSION}

CATEGORIES=		www

# Apache-2.0
PERMIT_PACKAGE =	Yes

MODPY_PYBUILD =		pdm

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python

TEST_DEPENDS =		devel/py-test-asyncio${MODPY_FLAVOR} \
			www/py-httpx${MODPY_FLAVOR} \
			www/py-starlette${MODPY_FLAVOR}

# not updated for new starlette error codes
MODPY_PYTEST_ARGS =	--deselect 'tests/test_asgi.py::test_request_response'

.include <bsd.port.mk>

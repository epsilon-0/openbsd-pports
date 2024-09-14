COMMENT =		ASGI web server for Python

MODPY_EGG_VERSION =	0.30.6
GH_ACCOUNT =		encode
GH_PROJECT =		uvicorn
GH_TAGNAME =		${MODPY_EGG_VERSION}

PKGNAME =		py-uvicorn-${MODPY_EGG_VERSION}

CATEGORIES=		www net

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PYBUILD =		hatchling

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python

RUN_DEPENDS =		devel/py-click${MODPY_FLAVOR} \
			devel/py-uvloop${MODPY_FLAVOR} \
			www/py-h11${MODPY_FLAVOR} \

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			net/py-websockets${MODPY_FLAVOR} \
			net/py-wsproto${MODPY_FLAVOR} \
			sysutils/py-dotenv${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-a2wsgi${MODPY_FLAVOR} \
			www/py-httpx${MODPY_FLAVOR}

.include <bsd.port.mk>

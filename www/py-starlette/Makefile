COMMENT =		ASGI web server for Python

MODPY_EGG_VERSION =	0.38.2
GH_ACCOUNT =		encode
GH_PROJECT =		starlette
GH_TAGNAME =		${MODPY_EGG_VERSION}

PKGNAME =		py-starlette-${MODPY_EGG_VERSION}

CATEGORIES=		www net

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PYBUILD =		hatchling

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python

RUN_DEPENDS =		net/py-anyio${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-httpx${MODPY_FLAVOR} \
			www/py-itsdangerous${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			www/py-multipart${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-trio${MODPY_FLAVOR}

.include <bsd.port.mk>

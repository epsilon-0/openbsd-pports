COMMENT =		modern, fast and high performance ASGI web framework

MODPY_EGG_VERSION =	0.114.0
GH_ACCOUNT =		fastapi
GH_PROJECT =		fastapi
GH_TAGNAME =		${MODPY_EGG_VERSION}

PKGNAME =		py-fastapi-${MODPY_EGG_VERSION}

CATEGORIES=		www net

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PYBUILD =		pdm

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python

RUN_DEPENDS =		devel/py-pydantic${MODPY_FLAVOR} \
			devel/py-typing-extensions${MODPY_FLAVOR} \
			www/py-starlette${MODPY_FLAVOR} \
			www/py-uvicorn${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-dirty-equals${MODPY_FLAVOR} \
			security/py-passlib${MODPY_FLAVOR} \
			textproc/py-ujson${MODPY_FLAVOR} \
			www/py-flask${MODPY_FLAVOR} \
			www/py-jwt${MODPY_FLAVOR}
#			devel/py-test-mock${MODPY_FLAVOR} \
#			net/py-websockets${MODPY_FLAVOR} \
#			net/py-wsproto${MODPY_FLAVOR} \
#			sysutils/py-dotenv${MODPY_FLAVOR} \
#			textproc/py-yaml${MODPY_FLAVOR} \
#			www/py-a2wsgi${MODPY_FLAVOR} \
#			www/py-httpx${MODPY_FLAVOR}

MODPY_PYTEST_ARGS =	--ignore tests/test_tutorial/test_async_sql_databases/test_tutorial001.py

.include <bsd.port.mk>

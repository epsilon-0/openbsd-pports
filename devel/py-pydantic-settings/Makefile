COMMENT =		settings management using pydantic

MODPY_EGG_VERSION =	2.4.0
DISTNAME =		pydantic_settings-${MODPY_EGG_VERSION}
PKGNAME =		py-pydantic-settings-${MODPY_EGG_VERSION}

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		devel/py-pydantic${MODPY_FLAVOR} \
			sysutils/py-dotenv${MODPY_FLAVOR}

TEST_DEPENDS =		textproc/py-tomli${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}

PORTHOME =		${WRKDIR}

# needs pytest-examples
MODPY_PYTEST_ARGS= --ignore tests/test_docs.py

.include <bsd.port.mk>

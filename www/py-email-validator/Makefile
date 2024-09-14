COMMENT =		email syntax and deliverability validator

MODPY_EGG_VERSION =	2.1.2
GH_ACCOUNT =		JoshData
GH_PROJECT =		python-email-validator
GH_TAGNAME =		v${MODPY_EGG_VERSION}

PKGNAME =		py-email-validator-${MODPY_EGG_VERSION}

CATEGORIES=		www net

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python

RUN_DEPENDS =		net/py-dnspython${MODPY_FLAVOR} \
			net/py-idna${MODPY_FLAVOR}

.include <bsd.port.mk>

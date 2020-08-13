# $OpenBSD$

COMMENT =	imap auth provider for synapse

GH_ACCOUNT =	bit
GH_PROJECT =	matrix-synapse-imap
GH_COMMIT =	7bf43cda33d40ddc1fc8be3c5aa46de9e9ab4560
CATEGORIES =	net

MODPY_EGG_VERSION =	0_09082020
DISTNAME =	synapse-imap-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

HOMEPAGE =	https://github.com/bit/matrix-synapse-imap

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# Apache-2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS=	python3
FLAVOR?=	python3

RUN_DEPENDS =	devel/py-twisted${MODPY_FLAVOR}

MODPY_SETUPTOOLS =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>


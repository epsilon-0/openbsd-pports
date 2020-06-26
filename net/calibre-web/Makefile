# $OpenBSD$

COMMENT =	web app for browsing, reading ebooks in calibre database

MODPY_EGG_VERSION =	0.6.8

GH_ACCOUNT =	janeczku
GH_PROJECT =	calibre-web
GH_TAGNAME =	${MODPY_EGG_VERSION}
CATEGORIES =	net

HOMEPAGE =	https://github.com/janeczku/calibre-web

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# GPL-3.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	No

RUN_DEPENDS =	archivers/py-rarfile${MODPY_FLAVOR} \
		databases/py-sqlalchemy${MODPY_FLAVOR} \
		devel/py-babel${MODPY_FLAVOR} \
		devel/py-comicapi\
		devel/py-singledispatch \
		devel/py-backports-abc \
		devel/py-iso639${MODPY_FLAVOR} \
		devel/py-jsonschema${MODPY_FLAVOR}\
		devel/py-Levenshtein \
		devel/py-tz${MODPY_FLAVOR} \
		devel/py-wand \
		graphics/py-Pillow${MODPY_FLAVOR} \
		textproc/py-PyPDF2${MODPY_FLAVOR} \
		textproc/py-natsort \
		textproc/py-unidecode${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR} \
		www/py-flask${MODPY_FLAVOR} \
		www/py-flask-babel \
		www/py-flask-login${MODPY_FLAVOR} \
		www/py-flask-principal \
		www/py-requests${MODPY_FLAVOR} \
		www/py-tornado${MODPY_FLAVOR}

NO_TEST =	Yes
NO_BUILD =	Yes

PREFIX =	${VARBASE}
INSTDIR =	${PREFIX}/calibre-web

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -a ${WRKSRC}/cps.py ${WRKSRC}/cps ${INSTDIR}
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${INSTDIR}

.include <bsd.port.mk>


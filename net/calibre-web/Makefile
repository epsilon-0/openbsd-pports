# $OpenBSD$

COMMENT =	web app for browsing, reading ebooks in calibre database

MODPY_EGG_VERSION =	0.6.6

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
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-babel${MODPY_FLAVOR} \
		www/py-flask${MODPY_FLAVOR} \
		www/py-flask-babel \
		www/py-flask-login${MODPY_FLAVOR} \
		www/py-flask-principal \
		devel/py-singledispatch \
		devel/py-backports-abc \
		devel/py-iso639${MODPY_FLAVOR} \
		textproc/py-PyPDF2${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		databases/py-sqlalchemy${MODPY_FLAVOR} \
		www/py-tornado${MODPY_FLAVOR} \
		textproc/py-natsort \
		textproc/py-unidecode${MODPY_FLAVOR} \
		devel/py-Levenshtein \
		archivers/py-rarfile${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR} \
		graphics/py-Pillow${MODPY_FLAVOR} \
		devel/py-wand

post-patch:
	@mkdir ${WRKSRC}/calibreweb
	@echo "pass" > ${WRKSRC}/calibreweb/__init__.py
	@mv ${WRKSRC}/cps.py ${WRKSRC}/cps ${WRKSRC}/calibreweb

.include <bsd.port.mk>


COMMENT =		fancy self-hosted monitoring tool

VERSION =		1.23.13

CATEGORIES =		www

HOMEPAGE =		https://uptime.kuma.pet/

MAINTAINER =		Aisha Tammy <aisha@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

DIST_TUPLE =		github louislam uptime-kuma ${VERSION} .

SITES.deps =		https://files.bsd.ac/openbsd-distfiles/
DISTFILES.deps =	uptime-kuma-${VERSION}.npm-cache.tar.bz2

SITES.dist =		https://github.com/louislam/uptime-kuma/releases/download/${VERSION}/
DISTFILES.dist =	uptime-kuma-dist-${VERSION}{dist}.tar.gz

NO_TEST =		Yes

BUILD_DEPENDS =		archivers/gtar\
			lang/node

RUN_DEPENDS =		lang/node

deps-cache:
	env HOME=${WRKDIR} npm config set cache "${WRKDIR}/npm-cache"
	cd ${WRKSRC} && env HOME=${WRKDIR} npm install --omit=dev

deps-tarball: deps-cache
	cd ${WRKDIR} && \
	gtar cvjSf uptime-kuma-${VERSION}.npm-cache.tar.bz2 npm-cache

# XXX: we need to do this in post extract as there could be patches for
#      node_modules directory, which isn't created until after the npm install
post-extract: deps-cache

do-build:
	rm -rf ${WRKSRC}/{.*,babel.config.js,install.sh} \
		${WRKSRC}/{docker,extra,test} \
		${WRKSRC}/node_modules/.bin \
		${WRKSRC}/node_modules/**/.bin
	mv ${WRKDIR}/dist ${WRKSRC}/

do-install:
	cp -a ${WRKSRC} ${PREFIX}/libexec/uptime-kuma

.include <bsd.port.mk>

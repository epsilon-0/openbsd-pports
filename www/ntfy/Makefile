COMMENT =		notification server for phone/desktop

MODGO_MODNAME =		heckel.io/ntfy/v2
MODGO_VERSION =		v2.9.0

# needed for ldflags as ntfy uses it in log output
NTFY_GH_COMMIT =	8c69234e285fdc5cae6772bde1f52bbbc2283c7d

DISTNAME =		ntfy-${MODGO_VERSION}
CATEGORIES =		www

HOMEPAGE =		https://ntfy.sh

MAINTAINER =		Aisha Tammy <aisha@openbsd.org>

# Apache-2.0, GPL-2.0
PERMIT_PACKAGE =	Yes

SITES.deps =		https://files.bsd.ac/openbsd-distfiles/
DISTFILES.deps =	ntfy-${MODGO_VERSION}.npm-cache.tar.bz2
# go.port.mk doesn't like other distfiles
EXTRACT_ONLY +=		${DISTFILES.deps}

WANTLIB +=		c pthread

MODULES =		lang/go

NO_TEST =		Yes

MODGO_LDFLAGS =		-X main.version=$(GH_TAGANAME) -X main.commit=$(NTFY_GH_COMMIT) -X main.date=$(shell date +%s)

BUILD_DEPENDS =		lang/node


deps-cache:
	env HOME=${WRKDIR} npm config set cache "${WRKDIR}/npm-cache"
	cd ${WRKSRC}/web && env HOME=${WRKDIR} npm install --omit=dev


deps-tarball: deps-cache
	cd ${WRKDIR} && \
	gtar cvjSf ntfy-${MODGO_VERSION}.npm-cache.tar.bz2 npm-cache

# XXX: we need to do this in post extract as there could be patches for
#      node_modules directory, which isn't created until after the npm install
post-extract: deps-cache

pre-build:
	mkdir -p ${WRKSRC}/server/docs ${WRKSRC}/server/site
	touch ${WRKSRC}/server/docs/index.html ${WRKSRC}/server/site/app.html
	HOME=${WRKDIR} npm config set cache "${WRKDIR}/npm-cache"
	cd ${WRKSRC}/web && \
	env HOME=${WRKDIR} npm install
	cd ${WRKSRC}/web && \
	env HOME=${WRKDIR} npx vite build && \
	mv build/index.html build/app.html && \
	mv build ../server/site && \
	rm ../server/site/config.js

#do-install:

.include "modules.inc"

.include <bsd.port.mk>

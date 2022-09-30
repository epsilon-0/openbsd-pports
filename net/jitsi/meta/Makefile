COMMENT=	meta package for all Jitsi Meet components

CATEGORIES=	net

VERSION=	1.0

MAINTAINER=	Philipp Buehler <pb-openbsd@sysfive.com>, \
		Aisha Tammy <openbsd@aisha.cc>

DISTNAME=	jitsi-meta-${VERSION}
DISTFILES=

# ISC
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	net/jitsi/jicofo \
		net/jitsi/meet \
		net/jitsi/prosody-plugins \
		net/jitsi/srtp \
		net/jitsi/videobridge

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/jitsi/
	${SUBST_DATA} \
		${FILESDIR}/prosody.cfg.lua.sample ${PREFIX}/share/jitsi/prosody.cfg.lua.sample \
		${FILESDIR}/nginx.conf.sample ${PREFIX}/share/jitsi/nginx.conf.sample


.include <bsd.port.mk>

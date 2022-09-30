COMMENT =	prosody modules for Jitsi Meet

CATEGORIES =	net

VERSION =	2.0.7648
PKGNAME =	jitsi-prosody-plugins-${VERSION}

GH_ACCOUNT =	jitsi
GH_PROJECT =	jitsi-meet
GH_TAGNAME =	jitsi-meet_7648

MAINTAINER =	Philipp Buehler <pb-openbsd@sysfive.com>, \
		Aisha Tammy <openbsd@aisha.cc>

# Apache-2.0
PERMIT_PACKAGE =	Yes

NO_BUILD =	Yes
NO_TEST =	Yes

RUN_DEPENDS =	net/prosody

do-install:
	mkdir -p ${PREFIX}/share/jitsi-prosody-plugins/token
	cp ${WRKSRC}/resources/prosody-plugins/*.lua ${PREFIX}/share/jitsi-prosody-plugins
	cp ${WRKSRC}/resources/prosody-plugins/token/*.lua ${PREFIX}/share/jitsi-prosody-plugins/token

.include <bsd.port.mk>

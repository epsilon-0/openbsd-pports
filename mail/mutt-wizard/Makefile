# $OpenBSD $

COMMENT =	neomutt and isync configuration with good defaults
DISTNAME =	mutt-wizard-0_20200812
CATEGORIES =	mail

GH_ACCOUNT =	LukeSmithxyz
GH_PROJECT =	mutt-wizard
GH_COMMIT  =	57a3f317ade14ca65c02e29dedc59059b97ea6c2

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# GPL-3
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	mail/neomutt \
		mail/isync \
		mail/msmtp \
		security/password-store

NO_BUILD =	Yes
NO_TEST =	Yes
USE_GMAKE =	Yes

FAKE_FLAGS =	PREFIX=${TRUEPREFIX} MANPREFIX=${PREFIX}/man

.include <bsd.port.mk>

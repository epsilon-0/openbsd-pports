# $OpenBSD $

COMMENT =	neomutt and isync configuration with good defaults
DISTNAME =	mutt-wizard-0_20200813
CATEGORIES =	mail

GH_ACCOUNT =	LukeSmithxyz
GH_PROJECT =	mutt-wizard
GH_COMMIT  =	2cd21c2db29e0a79a8fb7c667af6bf5b1a962da0

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

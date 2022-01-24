# $OpenBSD$

COMMENT =		unofficial bitwarden compatible server

GH_ACCOUNT =		dani-garcia
GH_PROJECT =		vaultwarden
GH_TAGNAME =		1.23.1

CATEGORIES =		security

# GPL-3.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		c c++abi pthread

MASTER_SITES7 =		https://files.bsd.ac/openbsd-distfiles/
DISTFILES +=		vaultwarden-${GH_TAGNAME}.vendor.tgz:7

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

SUBST_VARS +=		WRKSRC

post-configure:
	mv ${WRKDIR}/myvendordir ${WRKSRC}
	${SUBST_CMD} -m 644 -c ${FILESDIR}/config.vendor ${WRKDIR}/config.vendor
	cat ${WRKDIR}/config.vendor >> ${WRKDIR}/.cargo/config

MODCARGO_FEATURES =	sqlite

MODCARGO_CRATES_SQLITE3_BUNDLED = Yes

.include "crates.inc"

.include <bsd.port.mk>

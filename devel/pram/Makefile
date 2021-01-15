# $OpenBSD: $

COMMENT	=	tool to ease merging pull requests and git patches
PKGNAME =	${DISTNAME:L}
CATEGORIES =	devel

VERSION =	10

GH_ACCOUNT =	mgorny
GH_PROJECT =	pram
GH_TAGNAME =	v${VERSION}

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# BSD
PERMIT_PACKAGE =	Yes

MODULES=	devel/meson

RUN_DEPENDS =	devel/git \
		shells/bash

TEST_DEPENDS =	security/gnupg

post-patch:
	find ${WRKSRC}/test -type f -exec sed -e "s/sha1sum/sha1/g" \
		-e "s/diff/gdiff/g" -i {} \;

.include <bsd.port.mk>

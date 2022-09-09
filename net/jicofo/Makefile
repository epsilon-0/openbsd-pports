COMMENT =	Server side focus component used in Jitsi Meet conferences

CATEGORIES =	net

VERSION =	2.0.7648
PKGNAME =	jicofo-${VERSION}

GH_ACCOUNT =	jitsi
GH_PROJECT =	jicofo
GH_TAGNAME =	jitsi-meet_7648

DISTFILES +=	${DISTNAME}${EXTRACT_SUFX}

# vendor maven dependencies
MASTER_SITES7 =	https://files.bsd.ac/openbsd-distfiles/
DISTFILES +=	jicofo-deps-${VERSION}.tgz:7

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>
# Apache-2.0
PERMIT_PACKAGE =	Yes

NO_TEST =	Yes

MODULES =	java
MODJAVA_VER =	11

BUILD_DEPENDS =	devel/maven

MAVEN_ARGS=	--offline -DskipTests -Dassembly.skipAssembly=false
MAVEN_REPO=	-Dmaven.repo.local=${WRKDIR}/m2

do-build:
	cd ${WRKSRC} && \
		env -i ${MAKE_ENV} mvn ${MAVEN_REPO} ${MAVEN_ARGS} package

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin ${PREFIX}/share/jicofo/lib ${MODJAVA_JAR_DIR}
	cp ${FILESDIR}/jicofo.sh ${FILESDIR}/jicofo.in.sh ${FILESDIR}/jicofo.conf ${WRKSRC}
	${SUBST_CMD} ${WRKSRC}/jicofo.sh ${WRKSRC}/jicofo.in.sh
	${INSTALL_PROGRAM} ${WRKSRC}/jicofo.sh ${PREFIX}/bin/jicofo
	${INSTALL_DATA} ${WRKSRC}/jicofo.conf ${PREFIX}/share/jicofo/
	${INSTALL_DATA} ${WRKSRC}/jicofo.in.sh ${PREFIX}/share/jicofo/
	${INSTALL_DATA} ${WRKSRC}/lib/logging.properties ${PREFIX}/share/jicofo/lib/
	${INSTALL_DATA} ${WRKSRC}/target/jicofo-1.1-SNAPSHOT-jar-with-dependencies.jar ${MODJAVA_JAR_DIR}/jicofo.jar

.include <bsd.port.mk>

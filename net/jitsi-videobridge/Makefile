COMMENT =	WebRTC compatible video router for jitsi

CATEGORIES =	net

VERSION =	2.1.634
PKGNAME =	jitsi-videobridge-${VERSION}

GH_ACCOUNT =	jitsi
GH_PROJECT =	jitsi-videobridge
GH_COMMIT =	ff8609adbe170ae612dc43cf363ba43708ab3fb3

DISTFILES +=	jitsi-videobridge-${VERSION}{ff8609adbe170ae612dc43cf363ba43708ab3fb3}${EXTRACT_SUFX}

# vendor maven dependencies
MASTER_SITES7 =	https://files.bsd.ac/openbsd-distfiles/
DISTFILES +=	jitsi-videobridge-deps-${VERSION}.tgz:7

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>
# Apache-2.0
PERMIT_PACKAGE =	Yes

NO_TEST =	Yes

MODULES =	java
MODJAVA_VER =	1.8+

BUILD_DEPENDS =	devel/maven

MAVEN_ARGS=	--offline -PbuildFatJar -DskipTests -Dassembly.skipAssembly=false
MAVEN_REPO=	-Dmaven.repo.local=${WRKDIR}/m2

do-build:
	cd ${WRKSRC} && \
		env -i ${MAKE_ENV} mvn ${MAVEN_REPO} ${MAVEN_ARGS} package

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR} # ${PREFIX}${SYSCONFDIR}/jitsi/videobridge
	${INSTALL_DATA} ${WRKSRC}/jvb/target/jitsi-videobridge-2.1-SNAPSHOT-jar-with-dependencies.jar ${MODJAVA_JAR_DIR}/jitsi-videobridge.jar
#	${INSTALL_DATA} ${FILESDIR}/jitsi-videobridge.conf ${PREFIX}/share/jitsi-videobridge/
#	${INSTALL_DATA} ${WRKSRC}/jvb/lib/logging.properties ${PREFIX}/share/jitsi-videobridge/lib/


.include <bsd.port.mk>

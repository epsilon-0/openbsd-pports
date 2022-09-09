COMMENT =	WebRTC compatible video router for jitsi

CATEGORIES =	net

VERSION =	2.0.7648
PKGNAME =	jitsi-videobridge-${VERSION}

GH_ACCOUNT =	jitsi
GH_PROJECT =	jitsi-videobridge
GH_COMMIT =	42bc1b9986b375e4e9d5044585f6bd0604bf8d25

DISTFILES +=	jitsi-videobridge-${VERSION}{${GH_COMMIT}}${EXTRACT_SUFX}

# vendor maven dependencies
MASTER_SITES7 =	https://files.bsd.ac/openbsd-distfiles/
DISTFILES +=	jitsi-videobridge-deps-${VERSION}.tgz:7

MAINTAINER =	Philipp Buehler <pb-openbsd@sysfive.com>,
		Aisha Tammy <openbsd@aisha.cc>
# Apache-2.0
PERMIT_PACKAGE =	Yes

NO_TEST =	Yes

MODULES =	java
MODJAVA_VER =	11

BUILD_DEPENDS =	devel/maven

MAVEN_ARGS=	--offline -PbuildFatJar -DskipTests -Dassembly.skipAssembly=false
MAVEN_REPO=	-Dmaven.repo.local=${WRKDIR}/m2

do-build:
	cd ${WRKSRC} && \
		env -i ${MAKE_ENV} mvn ${MAVEN_REPO} ${MAVEN_ARGS} package

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin ${PREFIX}/share/jvb/lib/ ${MODJAVA_JAR_DIR}
	cp ${FILESDIR}/jvb.sh ${FILESDIR}/jvb.in.sh ${FILESDIR}/jvb.conf ${FILESDIR}/sip-communicator.properties ${WRKSRC}
	${SUBST_CMD} ${WRKSRC}/jvb.sh ${WRKSRC}/jvb.in.sh
	${INSTALL_PROGRAM} ${WRKSRC}/jvb.sh ${PREFIX}/bin/jvb
	${INSTALL_DATA} ${WRKSRC}/jvb.conf ${PREFIX}/share/jvb/
	${INSTALL_DATA} ${WRKSRC}/jvb.in.sh ${PREFIX}/share/jvb/
	${INSTALL_DATA} ${WRKSRC}/sip-communicator.properties ${PREFIX}/share/jvb/lib/
	${INSTALL_DATA} ${WRKSRC}/jvb/lib/logging.properties ${PREFIX}/share/jvb/lib/
	${INSTALL_DATA} ${WRKSRC}/jvb/target/jitsi-videobridge-2.1-SNAPSHOT-jar-with-dependencies.jar ${MODJAVA_JAR_DIR}/jitsi-videobridge.jar


.include <bsd.port.mk>

COMMENT =       multi-distribution method for cloud instance initialization.

MODPY_EGG_VERSION =     23.4.1
GH_ACCOUNT =	canonical
GH_PROJECT =	cloud-init
GH_TAGNAME =	${MODPY_EGG_VERSION}
SITES.github=	https://github.com/igalic/cloud-init/commit/
PATCHFILES.github=	boottime{cfb1bef67c0a24b1377c113ecab20cc89d1f1055}.patch \
			services{969671bc7b1ebe8429429d0fb0c3b0e0be21be25}.patch \
			uname{533ec66bde3e7afd8807229635132c7340245e02}.patch \
			ds-dmi{4ed09d63d8cfd403e7c7d66c06464fad96c19440}.patch \
			py-dmi{4006c23cba5a5e65f0dba4db97491a09cd9a851e}.patch \
			ds-runpath{83f99b547c0c52b292fb6b3f56417c93df6156d1}.patch \
			cfg-runpath{8937b5e5a94533a10a78100991afe559331242e0}.patch \
			setup-libexec{bb1e298b43dbdb31c633cb40d2e8f871bb5cedeb}.patch
PATCH_DIST_STRIP=       -p1

CATEGORIES =    sysutils

HOMEPAGE =      https://cloud-init.io/

# Apache 2.0 / GPLv3
PERMIT_PACKAGE =        Yes

MODULES =               lang/python

MODPY_SETUPTOOLS =      Yes
MODPY_PYTEST =          Yes

FLAVOR =                python3
FLAVORS =               python3

RUN_DEPENDS = 		devel/py-configobj${MODPY_FLAVOR} \
			devel/py-jsonschema${MODPY_FLAVOR} \
			net/py-netifaces${MODPY_FLAVOR} \
			security/py-oauthlib${MODPY_FLAVOR} \
			shells/bash \
			textproc/py-jsonpatch${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-jsonschema${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			www/py-httpretty${MODPY_FLAVOR} \
			www/py-responses${MODPY_FLAVOR}

FIX_EXTRACT_PERMISSIONS =       Yes

.include <bsd.port.mk>

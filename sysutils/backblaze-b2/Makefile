COMMENT =               command-line tool to access B2 cloud storage

MODPY_EGG_VERSION =     4.0.3
DISTNAME =              b2-${MODPY_EGG_VERSION}
PKGNAME =               backblaze-b2-${MODPY_EGG_VERSION}
CATEGORIES =            sysutils

# MIT
PERMIT_PACKAGE =        Yes

MODULES =               lang/python
MODPY_PI =              Yes
MODPY_PYBUILD =         pdm

# Tests require a Backblaze account and network connectivity
NO_TEST =               Yes

RUN_DEPENDS =           devel/py-argcomplete${MODPY_FLAVOR} \
                        devel/py-arrow${MODPY_FLAVOR} \
                        devel/py-phx-class-registry${MODPY_FLAVOR} \
                        devel/py-tabulate${MODPY_FLAVOR} \
                        devel/py-tqdm${MODPY_FLAVOR} \
                        net/py-b2sdk${MODPY_FLAVOR} \
                        net/py-idna${MODPY_FLAVOR} \
                        sysutils/py-platformdirs${MODPY_FLAVOR} \
                        textproc/py-docutils${MODPY_FLAVOR} \
                        textproc/py-rst2ansi${MODPY_FLAVOR}

.include <bsd.port.mk>

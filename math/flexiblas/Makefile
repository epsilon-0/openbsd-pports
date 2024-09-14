COMMENT=	BLAS and LAPACK wrapper library with runtime exchangeable backends


CATEGORIES=	math

VERSION=	3.3.0
DISTNAME=	flexiblas-${VERSION}

HOMEPAGE=	https://netlib.org/lapack/

MAINTAINER=	Aisha Tammy <aisha@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/mpimd-csc/flexiblas/releases/download/v${VERSION}/

MODULES=	devel/cmake \
		fortran

COMPILER=	ports-gcc

CONFIGURE_ENV=	FC=egfortran
CONFIGURE_ARGS=	-DTESTS=on \
		-DEXAMPLES=OFF \
		-DCBLAS=ON \
		-DLAPACK=ON \
		-DBLAS_AUTO_DETECT=OFF

.include <bsd.port.mk>

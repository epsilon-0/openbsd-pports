# $OpenBSD: $

COMMENT	=		unofficial bitwarden compatible server written in Rust 
CATEGORIES =		security net

VERSION =		1.18.0

DISTNAME =		bitwarden_rs-${VERSION}
PKGNAME =		${DISTNAME:L}

MAINTAINER =		Aisha Tammy <openbsd@aisha.cc>

# GPL 3.0
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

NO_TEST =		Yes

#GH_ACCOUNT =		dani-garcia
#GH_PROJECT =		bitwarden_rs
#GH_TAGNAME =		${VERSION}
MASTER_SITES0 =		https://github.com/dani-garcia/bitwarden_rs/archive/
DISTFILES =		${VERSION}.tar.gz:0

# some dependencies are not in crates.io
# this is a meta repository with the github crates as submodules
DEP_PATCH =		1
MASTER_SITES1 =		https://github.com/bsd-ac/bitwarden_rs-openbsd/releases/download/${VERSION}_p${DEP_PATCH}/
DISTFILES +=		bitwarden_rs-openbsd-${VERSION}_p${DEP_PATCH}.tgz:1

BW_EXTRA_CRATES =	devise 0.3.0 devise_codegen 0.3.0 devise_core 0.3.0 \
			rocket 0.5.0-dev rocket_codegen 0.5.0-dev \
			rocket_contrib 0.5.0-dev rocket_http 0.5.0-dev data-url 0.1.0

pre-patch:
	mkdir -p ${WRKDIR}/bw_extra_crates
	cp -r ${WRKDIR}/bitwarden_rs-openbsd/Devise   ${MODCARGO_VENDOR_DIR}/devise-0.3.0
	tar czf ${WRKDIR}/bw_extra_crates/devise-0.3.0.tgz ${MODCARGO_VENDOR_DIR}/devise-0.3.0
	cp -r ${WRKDIR}/bitwarden_rs-openbsd/Devise   ${MODCARGO_VENDOR_DIR}/devise_codegen-0.3.0
	tar czf ${WRKDIR}/bw_extra_crates/devise_codegen-0.3.0.tgz ${MODCARGO_VENDOR_DIR}/devise_codegen-0.3.0
	cp -r ${WRKDIR}/bitwarden_rs-openbsd/Devise   ${MODCARGO_VENDOR_DIR}/devise_core-0.3.0
	tar czf ${WRKDIR}/bw_extra_crates/devise_core-0.3.0.tgz ${MODCARGO_VENDOR_DIR}/devise_core-0.3.0
	cp -r ${WRKDIR}/bitwarden_rs-openbsd/Rocket   ${MODCARGO_VENDOR_DIR}/rocket-0.5.0-dev
	tar czf ${WRKDIR}/bw_extra_crates/rocket-0.5.0-dev.tgz ${MODCARGO_VENDOR_DIR}/rocket-0.5.0-dev
	cp -r ${WRKDIR}/bitwarden_rs-openbsd/Rocket   ${MODCARGO_VENDOR_DIR}/rocket_codegen-0.5.0-dev
	tar czf ${WRKDIR}/bw_extra_crates/rocket_codegen-0.5.0-dev.tgz ${MODCARGO_VENDOR_DIR}/rocket_codegen-0.5.0-dev
	cp -r ${WRKDIR}/bitwarden_rs-openbsd/Rocket   ${MODCARGO_VENDOR_DIR}/rocket_contrib-0.5.0-dev
	tar czf ${WRKDIR}/bw_extra_crates/rocket_contrib-0.5.0-dev.tgz ${MODCARGO_VENDOR_DIR}/rocket_contrib-0.5.0-dev
	cp -r ${WRKDIR}/bitwarden_rs-openbsd/Rocket   ${MODCARGO_VENDOR_DIR}/rocket_http-0.5.0-dev
	tar czf ${WRKDIR}/bw_extra_crates/rocket_http-0.5.0-dev.tgz ${MODCARGO_VENDOR_DIR}/rocket_http-0.5.0-dev
	cp -r ${WRKDIR}/bitwarden_rs-openbsd/rust-url ${MODCARGO_VENDOR_DIR}/data-url-0.1.0
	tar czf ${WRKDIR}/bw_extra_crates/data-url-0.1.0.tgz ${MODCARGO_VENDOR_DIR}/data-url-0.1.0

.for _cratename _cratever in ${BW_EXTRA_CRATES}
MODCARGO_post-patch += \
	${ECHO_MSG} "[modcargo] Generating metadata for ${_cratename}-${_cratever}" ; \
	${LOCALBASE}/bin/cargo-generate-vendor \
		${WRKDIR}/bw_extra_crates/${_cratename}-${_cratever}.tgz \
		${MODCARGO_VENDOR_DIR}/${_cratename}-${_cratever} ;
.endfor

MODCARGO_CRATES +=	addr2line	0.14.0
MODCARGO_CRATES +=	adler	0.2.3
MODCARGO_CRATES +=	aho-corasick	0.7.15
MODCARGO_CRATES +=	ansi_term	0.11.0
MODCARGO_CRATES +=	atty	0.2.14
MODCARGO_CRATES +=	autocfg	0.1.7
MODCARGO_CRATES +=	autocfg	1.0.1
MODCARGO_CRATES +=	backtrace	0.3.55
MODCARGO_CRATES +=	base-x	0.2.8
MODCARGO_CRATES +=	base64	0.9.3
MODCARGO_CRATES +=	base64	0.11.0
MODCARGO_CRATES +=	base64	0.12.3
MODCARGO_CRATES +=	base64	0.13.0
MODCARGO_CRATES +=	binascii	0.1.4
MODCARGO_CRATES +=	bitflags	1.2.1
MODCARGO_CRATES +=	bitvec	0.19.4
MODCARGO_CRATES +=	block-buffer	0.7.3
MODCARGO_CRATES +=	block-padding	0.1.5
MODCARGO_CRATES +=	buf_redux	0.8.4
MODCARGO_CRATES +=	bumpalo	3.4.0
MODCARGO_CRATES +=	byte-tools	0.1.3
MODCARGO_CRATES +=	byte-tools	0.3.1
MODCARGO_CRATES +=	byteorder	1.3.4
MODCARGO_CRATES +=	bytes	0.4.12
MODCARGO_CRATES +=	bytes	0.5.6
MODCARGO_CRATES +=	cc	1.0.66
MODCARGO_CRATES +=	cfg-if	0.1.10
MODCARGO_CRATES +=	cfg-if	1.0.0
MODCARGO_CRATES +=	chashmap	2.2.2
MODCARGO_CRATES +=	chrono	0.4.19
MODCARGO_CRATES +=	chrono-tz	0.5.3
MODCARGO_CRATES +=	clap	2.33.3
MODCARGO_CRATES +=	cloudabi	0.0.3
MODCARGO_CRATES +=	const_fn	0.4.4
MODCARGO_CRATES +=	constant_time_eq	0.1.5
MODCARGO_CRATES +=	cookie	0.14.3
MODCARGO_CRATES +=	core-foundation	0.9.1
MODCARGO_CRATES +=	core-foundation-sys	0.8.2
MODCARGO_CRATES +=	crypto-mac	0.3.0
MODCARGO_CRATES +=	crypto-mac	0.7.0
MODCARGO_CRATES +=	data-encoding	2.3.1
#MODCARGO_CRATES +=	data-url	0.1.0
#MODCARGO_CRATES +=	devise	0.3.0
#MODCARGO_CRATES +=	devise_codegen	0.3.0
#MODCARGO_CRATES +=	devise_core	0.3.0
MODCARGO_CRATES +=	diesel	1.4.5
MODCARGO_CRATES +=	diesel_derives	1.4.1
MODCARGO_CRATES +=	diesel_migrations	1.4.0
MODCARGO_CRATES +=	digest	0.5.2
MODCARGO_CRATES +=	digest	0.8.1
MODCARGO_CRATES +=	digest-buffer	0.3.1
MODCARGO_CRATES +=	discard	1.0.4
MODCARGO_CRATES +=	dotenv	0.15.0
MODCARGO_CRATES +=	encoding_rs	0.8.26
MODCARGO_CRATES +=	error-chain	0.11.0
MODCARGO_CRATES +=	fake-simd	0.1.2
MODCARGO_CRATES +=	fern	0.6.0
MODCARGO_CRATES +=	fnv	1.0.7
MODCARGO_CRATES +=	foreign-types	0.3.2
MODCARGO_CRATES +=	foreign-types-shared	0.1.1
MODCARGO_CRATES +=	form_urlencoded	1.0.0
MODCARGO_CRATES +=	fuchsia-cprng	0.1.1
MODCARGO_CRATES +=	fuchsia-zircon	0.3.3
MODCARGO_CRATES +=	fuchsia-zircon-sys	0.3.3
MODCARGO_CRATES +=	funty	1.0.1
MODCARGO_CRATES +=	futf	0.1.4
MODCARGO_CRATES +=	futures	0.3.8
MODCARGO_CRATES +=	futures-channel	0.3.8
MODCARGO_CRATES +=	futures-core	0.3.8
MODCARGO_CRATES +=	futures-executor	0.3.8
MODCARGO_CRATES +=	futures-io	0.3.8
MODCARGO_CRATES +=	futures-macro	0.3.8
MODCARGO_CRATES +=	futures-sink	0.3.8
MODCARGO_CRATES +=	futures-task	0.3.8
MODCARGO_CRATES +=	futures-util	0.3.8
MODCARGO_CRATES +=	generic-array	0.7.3
MODCARGO_CRATES +=	generic-array	0.12.3
MODCARGO_CRATES +=	getrandom	0.1.15
MODCARGO_CRATES +=	gimli	0.23.0
MODCARGO_CRATES +=	glob	0.3.0
MODCARGO_CRATES +=	h2	0.2.7
MODCARGO_CRATES +=	handlebars	3.5.1
MODCARGO_CRATES +=	hashbrown	0.9.1
MODCARGO_CRATES +=	heck	0.3.1
MODCARGO_CRATES +=	hermit-abi	0.1.17
MODCARGO_CRATES +=	hmac	0.1.1
MODCARGO_CRATES +=	hmac	0.7.1
MODCARGO_CRATES +=	hostname	0.3.1
MODCARGO_CRATES +=	html5ever	0.22.5
MODCARGO_CRATES +=	http	0.2.2
MODCARGO_CRATES +=	http-body	0.3.1
MODCARGO_CRATES +=	httparse	1.3.4
MODCARGO_CRATES +=	httpdate	0.3.2
MODCARGO_CRATES +=	hyper	0.10.16
MODCARGO_CRATES +=	hyper	0.13.9
MODCARGO_CRATES +=	hyper-sync-rustls	0.3.0-rc.17
MODCARGO_CRATES +=	hyper-tls	0.4.3
MODCARGO_CRATES +=	hyperx	1.2.0
MODCARGO_CRATES +=	idna	0.1.5
MODCARGO_CRATES +=	idna	0.2.0
MODCARGO_CRATES +=	indexmap	1.6.1
MODCARGO_CRATES +=	instant	0.1.9
MODCARGO_CRATES +=	iovec	0.1.4
MODCARGO_CRATES +=	ipnet	2.3.0
MODCARGO_CRATES +=	itoa	0.4.6
MODCARGO_CRATES +=	js-sys	0.3.46
MODCARGO_CRATES +=	jsonwebtoken	7.2.0
MODCARGO_CRATES +=	kernel32-sys	0.2.2
MODCARGO_CRATES +=	language-tags	0.2.2
MODCARGO_CRATES +=	lazy_static	1.4.0
MODCARGO_CRATES +=	lazycell	1.3.0
MODCARGO_CRATES +=	lettre	0.10.0-alpha.4
MODCARGO_CRATES +=	libc	0.2.81
MODCARGO_CRATES +=	libsqlite3-sys	0.18.0
MODCARGO_CRATES +=	lock_api	0.4.2
MODCARGO_CRATES +=	log	0.3.9
MODCARGO_CRATES +=	log	0.4.11
MODCARGO_CRATES +=	mac	0.1.1
MODCARGO_CRATES +=	maplit	1.0.2
MODCARGO_CRATES +=	markup5ever	0.7.5
MODCARGO_CRATES +=	match_cfg	0.1.0
MODCARGO_CRATES +=	matches	0.1.8
MODCARGO_CRATES +=	maybe-uninit	2.0.0
MODCARGO_CRATES +=	memchr	2.3.4
MODCARGO_CRATES +=	migrations_internals	1.4.1
MODCARGO_CRATES +=	migrations_macros	1.4.2
MODCARGO_CRATES +=	mime	0.2.6
MODCARGO_CRATES +=	mime	0.3.16
MODCARGO_CRATES +=	mime_guess	2.0.3
MODCARGO_CRATES +=	miniz_oxide	0.4.3
MODCARGO_CRATES +=	mio	0.6.23
MODCARGO_CRATES +=	mio-extras	2.0.6
MODCARGO_CRATES +=	miow	0.2.2
MODCARGO_CRATES +=	multipart	0.17.0
MODCARGO_CRATES +=	mysqlclient-sys	0.2.4
MODCARGO_CRATES +=	native-tls	0.2.6
MODCARGO_CRATES +=	net2	0.2.37
MODCARGO_CRATES +=	new_debug_unreachable	1.0.4
MODCARGO_CRATES +=	newline-converter	0.1.0
MODCARGO_CRATES +=	nodrop	0.1.14
MODCARGO_CRATES +=	nom	6.0.1
MODCARGO_CRATES +=	num-bigint	0.2.6
MODCARGO_CRATES +=	num-derive	0.3.3
MODCARGO_CRATES +=	num-integer	0.1.44
MODCARGO_CRATES +=	num-traits	0.2.14
MODCARGO_CRATES +=	num_cpus	1.13.0
MODCARGO_CRATES +=	oath	0.10.2
MODCARGO_CRATES +=	object	0.22.0
MODCARGO_CRATES +=	once_cell	1.5.2
MODCARGO_CRATES +=	opaque-debug	0.2.3
MODCARGO_CRATES +=	openssl	0.10.31
MODCARGO_CRATES +=	openssl-probe	0.1.2
MODCARGO_CRATES +=	openssl-src	111.13.0+1.1.1i
MODCARGO_CRATES +=	openssl-sys	0.9.59
MODCARGO_CRATES +=	owning_ref	0.3.3
MODCARGO_CRATES +=	parity-ws	0.10.0
MODCARGO_CRATES +=	parking_lot	0.4.8
MODCARGO_CRATES +=	parking_lot	0.11.1
MODCARGO_CRATES +=	parking_lot_core	0.2.14
MODCARGO_CRATES +=	parking_lot_core	0.8.1
MODCARGO_CRATES +=	parse-zoneinfo	0.3.0
MODCARGO_CRATES +=	paste	1.0.4
MODCARGO_CRATES +=	pear	0.1.4
MODCARGO_CRATES +=	pear_codegen	0.1.4
MODCARGO_CRATES +=	pem	0.8.2
MODCARGO_CRATES +=	percent-encoding	1.0.1
MODCARGO_CRATES +=	percent-encoding	2.1.0
MODCARGO_CRATES +=	pest	2.1.3
MODCARGO_CRATES +=	pest_derive	2.1.0
MODCARGO_CRATES +=	pest_generator	2.1.3
MODCARGO_CRATES +=	pest_meta	2.1.3
MODCARGO_CRATES +=	phf	0.7.24
MODCARGO_CRATES +=	phf_codegen	0.7.24
MODCARGO_CRATES +=	phf_generator	0.7.24
MODCARGO_CRATES +=	phf_shared	0.7.24
MODCARGO_CRATES +=	pin-project	0.4.27
MODCARGO_CRATES +=	pin-project	1.0.2
MODCARGO_CRATES +=	pin-project-internal	0.4.27
MODCARGO_CRATES +=	pin-project-internal	1.0.2
MODCARGO_CRATES +=	pin-project-lite	0.1.11
MODCARGO_CRATES +=	pin-project-lite	0.2.0
MODCARGO_CRATES +=	pin-utils	0.1.0
MODCARGO_CRATES +=	pkg-config	0.3.19
MODCARGO_CRATES +=	ppv-lite86	0.2.10
MODCARGO_CRATES +=	pq-sys	0.4.6
MODCARGO_CRATES +=	precomputed-hash	0.1.1
MODCARGO_CRATES +=	proc-macro-error	1.0.4
MODCARGO_CRATES +=	proc-macro-error-attr	1.0.4
MODCARGO_CRATES +=	proc-macro-hack	0.5.19
MODCARGO_CRATES +=	proc-macro-nested	0.1.6
MODCARGO_CRATES +=	proc-macro2	0.4.30
MODCARGO_CRATES +=	proc-macro2	1.0.24
MODCARGO_CRATES +=	quick-error	1.2.3
MODCARGO_CRATES +=	quick-error	2.0.0
MODCARGO_CRATES +=	quote	0.6.13
MODCARGO_CRATES +=	quote	1.0.7
MODCARGO_CRATES +=	quoted_printable	0.4.2
MODCARGO_CRATES +=	r2d2	0.8.9
MODCARGO_CRATES +=	radium	0.5.3
MODCARGO_CRATES +=	rand	0.4.6
MODCARGO_CRATES +=	rand	0.6.5
MODCARGO_CRATES +=	rand	0.7.3
MODCARGO_CRATES +=	rand_chacha	0.1.1
MODCARGO_CRATES +=	rand_chacha	0.2.2
MODCARGO_CRATES +=	rand_core	0.3.1
MODCARGO_CRATES +=	rand_core	0.4.2
MODCARGO_CRATES +=	rand_core	0.5.1
MODCARGO_CRATES +=	rand_hc	0.1.0
MODCARGO_CRATES +=	rand_hc	0.2.0
MODCARGO_CRATES +=	rand_isaac	0.1.1
MODCARGO_CRATES +=	rand_jitter	0.1.4
MODCARGO_CRATES +=	rand_os	0.1.3
MODCARGO_CRATES +=	rand_pcg	0.1.2
MODCARGO_CRATES +=	rand_xorshift	0.1.1
MODCARGO_CRATES +=	rdrand	0.4.0
MODCARGO_CRATES +=	redox_syscall	0.1.57
MODCARGO_CRATES +=	regex	1.4.2
MODCARGO_CRATES +=	regex-syntax	0.6.21
MODCARGO_CRATES +=	remove_dir_all	0.5.3
MODCARGO_CRATES +=	reqwest	0.10.10
MODCARGO_CRATES +=	ring	0.16.19
MODCARGO_CRATES +=	rmp	0.8.9
MODCARGO_CRATES +=	rmpv	0.4.6
#MODCARGO_CRATES +=	rocket	0.5.0-dev
#MODCARGO_CRATES +=	rocket_codegen	0.5.0-dev
#MODCARGO_CRATES +=	rocket_contrib	0.5.0-dev
#MODCARGO_CRATES +=	rocket_http	0.5.0-dev
MODCARGO_CRATES +=	rustc-demangle	0.1.18
MODCARGO_CRATES +=	rustc-hex	1.0.0
MODCARGO_CRATES +=	rustc_version	0.2.3
MODCARGO_CRATES +=	rustls	0.17.0
MODCARGO_CRATES +=	ryu	1.0.5
MODCARGO_CRATES +=	safemem	0.3.3
MODCARGO_CRATES +=	same-file	1.0.6
MODCARGO_CRATES +=	schannel	0.1.19
MODCARGO_CRATES +=	scheduled-thread-pool	0.2.5
MODCARGO_CRATES +=	scopeguard	1.1.0
MODCARGO_CRATES +=	sct	0.6.0
MODCARGO_CRATES +=	security-framework	2.0.0
MODCARGO_CRATES +=	security-framework-sys	2.0.0
MODCARGO_CRATES +=	semver	0.9.0
MODCARGO_CRATES +=	semver-parser	0.7.0
MODCARGO_CRATES +=	serde	1.0.118
MODCARGO_CRATES +=	serde_derive	1.0.118
MODCARGO_CRATES +=	serde_json	1.0.60
MODCARGO_CRATES +=	serde_urlencoded	0.7.0
MODCARGO_CRATES +=	sha-1	0.3.4
MODCARGO_CRATES +=	sha-1	0.8.2
MODCARGO_CRATES +=	sha1	0.6.0
MODCARGO_CRATES +=	sha2	0.5.3
MODCARGO_CRATES +=	simple_asn1	0.4.1
MODCARGO_CRATES +=	siphasher	0.2.3
MODCARGO_CRATES +=	slab	0.4.2
MODCARGO_CRATES +=	smallvec	0.6.13
MODCARGO_CRATES +=	smallvec	1.5.1
MODCARGO_CRATES +=	socket2	0.3.17
MODCARGO_CRATES +=	soup	0.5.0
MODCARGO_CRATES +=	spin	0.5.2
MODCARGO_CRATES +=	stable_deref_trait	1.2.0
MODCARGO_CRATES +=	standback	0.2.13
MODCARGO_CRATES +=	state	0.4.2
MODCARGO_CRATES +=	stdweb	0.4.20
MODCARGO_CRATES +=	stdweb-derive	0.5.3
MODCARGO_CRATES +=	stdweb-internal-macros	0.2.9
MODCARGO_CRATES +=	stdweb-internal-runtime	0.1.5
MODCARGO_CRATES +=	string_cache	0.7.5
MODCARGO_CRATES +=	string_cache_codegen	0.4.4
MODCARGO_CRATES +=	string_cache_shared	0.3.0
MODCARGO_CRATES +=	strsim	0.8.0
MODCARGO_CRATES +=	structopt	0.3.21
MODCARGO_CRATES +=	structopt-derive	0.4.14
MODCARGO_CRATES +=	subtle	1.0.0
MODCARGO_CRATES +=	subtle	2.3.0
MODCARGO_CRATES +=	syn	0.15.44
MODCARGO_CRATES +=	syn	1.0.54
MODCARGO_CRATES +=	syslog	4.0.1
MODCARGO_CRATES +=	tap	1.0.0
MODCARGO_CRATES +=	tempfile	3.1.0
MODCARGO_CRATES +=	tendril	0.4.1
MODCARGO_CRATES +=	textwrap	0.11.0
MODCARGO_CRATES +=	thread_local	1.0.1
MODCARGO_CRATES +=	threadpool	1.8.1
MODCARGO_CRATES +=	time	0.1.44
MODCARGO_CRATES +=	time	0.2.23
MODCARGO_CRATES +=	time-macros	0.1.1
MODCARGO_CRATES +=	time-macros-impl	0.1.1
MODCARGO_CRATES +=	tinyvec	1.1.0
MODCARGO_CRATES +=	tinyvec_macros	0.1.0
MODCARGO_CRATES +=	tokio	0.2.24
MODCARGO_CRATES +=	tokio-tls	0.3.1
MODCARGO_CRATES +=	tokio-util	0.3.1
MODCARGO_CRATES +=	toml	0.4.10
MODCARGO_CRATES +=	tower-service	0.3.0
MODCARGO_CRATES +=	tracing	0.1.22
MODCARGO_CRATES +=	tracing-core	0.1.17
MODCARGO_CRATES +=	tracing-futures	0.2.4
MODCARGO_CRATES +=	traitobject	0.1.0
MODCARGO_CRATES +=	try-lock	0.2.3
MODCARGO_CRATES +=	twoway	0.1.8
MODCARGO_CRATES +=	typeable	0.1.2
MODCARGO_CRATES +=	typenum	1.12.0
MODCARGO_CRATES +=	u2f	0.2.0
MODCARGO_CRATES +=	ucd-trie	0.1.3
MODCARGO_CRATES +=	unicase	1.4.2
MODCARGO_CRATES +=	unicase	2.6.0
MODCARGO_CRATES +=	unicode-bidi	0.3.4
MODCARGO_CRATES +=	unicode-normalization	0.1.16
MODCARGO_CRATES +=	unicode-segmentation	1.7.1
MODCARGO_CRATES +=	unicode-width	0.1.8
MODCARGO_CRATES +=	unicode-xid	0.1.0
MODCARGO_CRATES +=	unicode-xid	0.2.1
MODCARGO_CRATES +=	untrusted	0.7.1
MODCARGO_CRATES +=	url	1.7.2
MODCARGO_CRATES +=	url	2.2.0
MODCARGO_CRATES +=	utf-8	0.7.5
MODCARGO_CRATES +=	uuid	0.8.1
MODCARGO_CRATES +=	vcpkg	0.2.11
MODCARGO_CRATES +=	vec_map	0.8.2
MODCARGO_CRATES +=	version_check	0.1.5
MODCARGO_CRATES +=	version_check	0.9.2
MODCARGO_CRATES +=	walkdir	2.3.1
MODCARGO_CRATES +=	want	0.3.0
MODCARGO_CRATES +=	wasi	0.9.0+wasi-snapshot-preview1
MODCARGO_CRATES +=	wasi	0.10.0+wasi-snapshot-preview1
MODCARGO_CRATES +=	wasm-bindgen	0.2.69
MODCARGO_CRATES +=	wasm-bindgen-backend	0.2.69
MODCARGO_CRATES +=	wasm-bindgen-futures	0.4.19
MODCARGO_CRATES +=	wasm-bindgen-macro	0.2.69
MODCARGO_CRATES +=	wasm-bindgen-macro-support	0.2.69
MODCARGO_CRATES +=	wasm-bindgen-shared	0.2.69
MODCARGO_CRATES +=	web-sys	0.3.46
MODCARGO_CRATES +=	webpki	0.21.4
MODCARGO_CRATES +=	webpki-roots	0.19.0
MODCARGO_CRATES +=	winapi	0.2.8
MODCARGO_CRATES +=	winapi	0.3.9
MODCARGO_CRATES +=	winapi-build	0.1.1
MODCARGO_CRATES +=	winapi-i686-pc-windows-gnu	0.4.0
MODCARGO_CRATES +=	winapi-util	0.1.5
MODCARGO_CRATES +=	winapi-x86_64-pc-windows-gnu	0.4.0
MODCARGO_CRATES +=	winreg	0.7.0
MODCARGO_CRATES +=	ws2_32-sys	0.2.1
MODCARGO_CRATES +=	wyz	0.2.0
MODCARGO_CRATES +=	yansi	0.5.0
MODCARGO_CRATES +=	yubico	0.9.1

.include <bsd.port.mk>

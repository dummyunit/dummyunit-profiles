base-post_src_install() {
	lafilefixer "${D}"
}

profile-post_src_install() { base-post_src_install ; }
        post_src_install() { base-post_src_install ; }

base-pre_src_compile() {
	[ -z "${FEATURES##*distcc*}" ] && find "${PORTAGE_TMPDIR}/portage/.distcc" -name "backoff*" -exec rm -f "{}" \+
}

profile-pre_src_compile() { base-pre_src_compile ; }
        pre_src_compile() { base-pre_src_compile ; }

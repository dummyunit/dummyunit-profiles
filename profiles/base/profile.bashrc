base-post_src_install() {
	lafilefixer "${D}"
}

profile-post_src_install() { base-post_src_install ; }
        post_src_install() { base-post_src_install ; }

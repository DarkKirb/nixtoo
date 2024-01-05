self: super: {
    # General fixes, broken tests, broken builds with ca derivations, etc
    redis = super.redis.overrideAttrs (_: {
        doCheck = false;
    });
    openldap = super.openldap.overrideAttrs (_: {
        doCheck = false;
    });
    ruby = super.ruby.overrideAttrs (_: {
        disallowedRequisites = [];
    });
    neovim = super.neovim.overrideAttrs (_: {
        disallowedRequisites = [];
    });
}

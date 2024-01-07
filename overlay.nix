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
    python = super.python.override {
        packageOverrides = import ./python.nix self super;
    };
    pythonPackages = self.python.pkgs;
    python311 = super.python311.override {
        packageOverrides = import ./python.nix self super;
    };
    python311Packages = self.python311.pkgs;
}

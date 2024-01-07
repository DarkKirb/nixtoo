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
    neovim-unwrapped = super.neovim-unwrapped.overrideAttrs (_: {
        disallowedReferences = [];
    });
    prometheus = super.prometheus.overrideAttrs (_: {
        doCheck = false;
    });
    python = super.python.override {
        packageOverrides = import ./python.nix self super;
    };
    pythonPackages = self.python.pkgs;
    python3 = super.python3.override {
        packageOverrides = import ./python.nix self super;
    };
    python3Packages = self.python3.pkgs;
    python311 = super.python311.override {
        packageOverrides = import ./python.nix self super;
    };
    python311Packages = self.python311.pkgs;
}

self: super: {
    # General fixes, broken tests, broken builds with ca derivations, etc
    grafana = super.grafana.overrideAttrs (_: {
        doCheck = false;
    });
    libuv = super.libuv.overrideAttrs (_: {
        doCheck = false;
    });
    neovim-unwrapped = super.neovim-unwrapped.overrideAttrs (_: {
        disallowedReferences = [];
    });
    openldap = super.openldap.overrideAttrs (_: {
        doCheck = false;
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
    redis = super.redis.overrideAttrs (_: {
        doCheck = false;
    });
    ruby = super.ruby.overrideAttrs (_: {
        disallowedRequisites = [];
    });
}

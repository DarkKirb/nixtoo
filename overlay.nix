self: super: {
    # General fixes, broken tests, broken builds with ca derivations, etc
    grafana = super.grafana.overrideAttrs (_: {
        doCheck = false;
    });
    libuv = if self.system == "i686-linux" then super.libuv.overrideAttrs (_: {
        doCheck = false;
    }) else super.libuv;
    neovim-unwrapped = super.neovim-unwrapped.overrideAttrs (_: {
        disallowedReferences = [];
    });
    openjdk8 = super.openjdk8.overrideAttrs (_: {
        disallowedReferences = [];
    });
    openjdk19 = super.openjdk19.overrideAttrs (_: {
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
    thunderbird-bin = super.thunderbird-bin.overrideAttrs (_: {
        disallowedRequisites = [];
    });
}

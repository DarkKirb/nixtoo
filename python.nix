# Python package overrides
self': super': self: super: { 
    click = super.click.overrideAttrs {
        doInstallCheck = false; # Broken on ZFS
    };
}

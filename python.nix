# Python package overrides
self': super': self: super: { 
    afdko = super.afdko.overrideAttrs {
        doInstallCheck = false;
    };
    click = super.click.overrideAttrs {
        doInstallCheck = false; # Broken on ZFS
    };
}

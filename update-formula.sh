# Full URL looks like this:
# https://github.com/pachyderm/pachyderm/releases/download/v1.0.1-dirty/pachctl_v1.0.1-dirty_darwin_amd64.zip
GITHUB_HOSTING_ROOT=https:\/\/github.com\/pachyderm\/pachyderm\/releases\/download
MAC_BINARY_SUFFIX=_darwin_amd64.zip
FORMULA=pachctl.rb.template

# e.g. convert from 1.3.4 -> 1.3
MAJOR_MINOR=`echo $VERSION | cut -f -2 -d "."`
# e.g. convert from 1.3 -> 13
MAJOR_MINOR_SQUASHED=`echo $MAJOR_MINOR | sed 's/\.//g'`

# Linux doesn't allow a space after the -i flag. OSX needs it. For now I'll assume builds/releases are done on a linux machine

### replace binary URL
sed -i'' 's/url ".*"/url "$(GITHUB_HOSTING_ROOT)\/v$(VERSION)\/pachctl_$(VERSION)$(MAC_BINARY_SUFFIX)"/g' $(FORMULA)


### get binary and update SHA
curl -L -o binary "$(subst \/,/,$(GITHUB_HOSTING_ROOT))/v$(VERSION)/pachctl_$(VERSION)$(MAC_BINARY_SUFFIX)"
# Need sha256sum ... install on mac via: 'brew install coreutils'
# And then do 'ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum'
which sha256sum
sha256sum binary | cut -f 1 -d " " > SHA
cat SHA | xargs -I NEWSHA sed -i'' 's/sha256 ".*"/sha256 "NEWSHA"/g' $(FORMULA)


### update version
sed -i'' 's/version ".*"/version "v$(VERSION)"/g' $(FORMULA)
sed -i'' 's/class Pachctl/class PachctlAT$(MAJOR_MINOR_SQUASHED)"/g' $(FORMULA)

# Put the file in place
mv $(FORMULA) pachctl@$(MAJOR_MINOR).rb



# Full URL looks like this:
# https://github.com/pachyderm/pachyderm/releases/download/v1.0.1-dirty/pachctl_v1.0.1-dirty_darwin_amd64.zip
GITHUB_HOSTING_ROOT=https:\/\/github.com\/pachyderm\/pachyderm\/releases\/download
MAC_BINARY_SUFFIX=_darwin_amd64.zip
FORMULA=pachctl.rb

update-formula:
	sed -i '' 's/url ".*"/url "$(GITHUB_HOSTING_ROOT)\/v$(VERSION)\/pachctl_$(VERSION)$(MAC_BINARY_SUFFIX)"/g' $(FORMULA)
	curl -L -o binary "$(subst \/,/,$(GITHUB_HOSTING_ROOT))/v$(VERSION)/pachctl_$(VERSION)$(MAC_BINARY_SUFFIX)"
	# Need sha256sum ... install on mac via: 'brew install coreutils'
	# And then do 'ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum'
	which sha256sum
	sha256sum binary | cut -f 1 -d " " > SHA
	cat SHA | xargs -I NEWSHA sed -i '' 's/sha256 ".*"/sha256 "NEWSHA"/g' $(FORMULA)
	sed -i '' 's/version ".*"/version "v$(VERSION)"/g' $(FORMULA)


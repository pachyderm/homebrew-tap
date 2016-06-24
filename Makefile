GITHUB_HOSTING_ROOT=https:\/\/github.com\/pachyderm\/pachyderm\/releases\/download
MAC_BINARY=pachctl_v1.0.1-dirty_darwin_amd64.zip
FORMULA=pachctl.rb

update-formula:
	sed -i '' 's/url ".*"/url "$(GITHUB_HOSTING_ROOT)\/$(VERSION)\/$(MAC_BINARY)"/g' $(FORMULA)
	curl -L -o binary "$(subst \/,/,$(GITHUB_HOSTING_ROOT))/$(VERSION)/$(MAC_BINARY)"
	$(eval SHA := $(shell sha256sum binary | cut -f 1 -d " "))
	echo "New SHA: $(SHA)"
	sed -i '' 's/sha256 ".*"/sha256 "$(SHA)"/g' $(FORMULA)
	sed -i '' 's/version ".*"/version "$(VERSION)"/g' $(FORMULA)


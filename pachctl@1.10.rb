require "formula"
require "language/go"
require 'erb'


class PachctlAT110 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.5-4e9d28fee4488f427ea48671b710a0b41c54f20b/pachctl_1.10.5-4e9d28fee4488f427ea48671b710a0b41c54f20b_darwin_amd64.zip"
  sha256 "87deb2fc8da5062a65fad8ae89903591183a3aab3a175bdcc49ae731d9f6020d"
  version "v1.10.5-4e9d28fee4488f427ea48671b710a0b41c54f20b"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

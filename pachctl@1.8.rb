require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.2-b01811d728f42bedb77d95f95bceeabffbf7afeb/pachctl_1.8.2-b01811d728f42bedb77d95f95bceeabffbf7afeb_darwin_amd64.zip"
  sha256 "7a3f57840d3601cdbe545fbf5f680c0d2446dc0ec8ef7a18c66158bd7e7ec745"
  version "v1.8.2-b01811d728f42bedb77d95f95bceeabffbf7afeb"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

require "formula"
require "language/go"
require 'erb'


class PachctlAT22 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.2.0-rc.1/pachctl_2.2.0-rc.1_darwin_amd64.zip"
  sha256 "e6b2e915a0130ee8f48ba420f3b40245bc73ae4740aca1635fd9d0cb8880eb16"
  version "v2.2.0-rc.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

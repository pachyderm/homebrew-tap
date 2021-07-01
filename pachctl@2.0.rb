require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.28/pachctl_2.0.0-alpha.28_darwin_amd64.zip"
  sha256 "f73efa7faa727d30d5f8dc64123367cf63b93b9bb3b80444fc6495ce782174d1"
  version "v2.0.0-alpha.28"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

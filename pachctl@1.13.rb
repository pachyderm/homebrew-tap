require "formula"
require "language/go"
require 'erb'


class PachctlAT113 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.13.1-beta.fix-ppsmaster.v1/pachctl_1.13.1-beta.fix-ppsmaster.v1_darwin_amd64.zip"
  sha256 "d9dfb9bd94dd2560b53796c2fb5b2a7cf679ddddfa0738d2c656c92e93c3aff6"
  version "v1.13.1-beta.fix-ppsmaster.v1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

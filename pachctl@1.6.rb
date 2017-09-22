require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.0rc6/pachctl_1.6.0rc6_darwin_amd64.zip"
  sha256 "cf5af8b31e0d8e9f0025667b4e6c690b3c69e7bfcc0c1ece1e969ba4d30631cf"
  version "v1.6.0rc6"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

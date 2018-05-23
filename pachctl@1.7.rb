require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.3/pachctl_1.7.3_darwin_amd64.zip"
  sha256 "47916c4ba379e45cc662b661b896d699d26fa2ddb715e409e2cbcb419447e77a"
  version "v1.7.3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

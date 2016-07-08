require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.1.0/pachctl_1.1.0_darwin_amd64.zip"
  sha256 "0cdf5d02c28a1835156fb643e41cb75ec6f56e8fb273273aa1018ba2c90bc7af"
  version "v1.1.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

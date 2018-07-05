require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.4/pachctl_1.7.4_darwin_amd64.zip"
  sha256 "4f63c65a2cdbbcfb5571b3396fe46cc0829a0582ba8e8ca1079517dfbed036c8"
  version "v1.7.4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

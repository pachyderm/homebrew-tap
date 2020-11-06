require "formula"
require "language/go"
require 'erb'


class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.7/pachctl_1.11.7_darwin_amd64.zip"
  sha256 "db6ab0983e59a0870c7b2cba3da69a28462a027302d0fd92ef7906410811d368"
  version "v1.11.7"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

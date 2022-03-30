require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.4-76b39d64c7730ee7db7208797c5cae3c5a3d9581/pachctl_2.1.4-76b39d64c7730ee7db7208797c5cae3c5a3d9581_darwin_amd64.zip"
  sha256 "2918c4e7f80d87a6c00b64482ae37354f5c7ffa680732113730b1b51877bf299"
  version "v2.1.4-76b39d64c7730ee7db7208797c5cae3c5a3d9581"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

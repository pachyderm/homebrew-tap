require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.0rc4/pachctl_1.7.0rc4_darwin_amd64.zip"
  sha256 "bdda7e782908f8018b2eb04680a01fd45de9b8cf52e6ab14e7481dee907f1fdd"
  version "v1.7.0rc4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

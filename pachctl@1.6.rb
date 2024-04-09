require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.10/pachctl_1.6.10_darwin_amd64.zip"
  sha256 "38a329c1266a4d23a9a5efbbc53aabff3e889efed1e1037569b0e31486499648"
  version "v1.6.10"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

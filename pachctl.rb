require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.15/pachctl_1.3.15_darwin_amd64.zip"
  sha256 "e62371de21240a5bad740ad9c2ac91de35728e334467f26aaece9fedf3ec44ca"
  version "v1.3.15"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

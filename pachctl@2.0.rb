require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.2/pachctl_2.0.2_darwin_amd64.zip"
  sha256 "3796a13cc1657799c005874675097272212d25045e8364b628b243a4fa9b8ae5"
  version "v2.0.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

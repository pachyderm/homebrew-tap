require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.2/pachctl_2.0.0-alpha.2_darwin_amd64.zip"
  sha256 "e141f5425329c337c1d589a08a99f82e50ce51e1df37bd78a5c505ee9afdf27e"
  version "v2.0.0-alpha.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

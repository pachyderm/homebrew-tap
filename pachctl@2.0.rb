require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.26/pachctl_2.0.0-alpha.26_darwin_amd64.zip"
  sha256 "9de53f1fef8334075624098e5e6ac22173c4395724595e441dc4ad9dbc32a7ff"
  version "v2.0.0-alpha.26"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

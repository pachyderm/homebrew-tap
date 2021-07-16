require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-beta.2/pachctl_2.0.0-beta.2_darwin_amd64.zip"
  sha256 "6c97c12369d0286bbec263a88fa8906d349767f912b51fc2c4de785d20920fe6"
  version "v2.0.0-beta.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

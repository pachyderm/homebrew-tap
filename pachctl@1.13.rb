require "formula"
require "language/go"
require 'erb'


class PachctlAT113 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.13.2-beta1/pachctl_1.13.2-beta1_darwin_amd64.zip"
  sha256 "14a10baba842e08818107f6836a4f246bfddc65aa55682042e14186d0229c325"
  version "v1.13.2-beta1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

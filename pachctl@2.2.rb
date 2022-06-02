require "formula"
require "language/go"
require 'erb'


class PachctlAT22 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.2.1-c009cc26362572679d88193c3bb484566a81ba08/pachctl_2.2.1-c009cc26362572679d88193c3bb484566a81ba08_darwin_amd64.zip"
  sha256 "4ec3e789365b01d1cb7fc9a16ac50ae663408be0b09e93e98e4f9edfd90e46a7"
  version "v2.2.1-c009cc26362572679d88193c3bb484566a81ba08"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

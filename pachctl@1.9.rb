require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.11-890996e78e342ddc1403a2bf24402622a8f2b0df/pachctl_1.9.11-890996e78e342ddc1403a2bf24402622a8f2b0df_darwin_amd64.zip"
  sha256 "1a525093d252312e8a3e1711c04d53ea08c16d1d792d88157dada7b71b33a964"
  version "v1.9.11-890996e78e342ddc1403a2bf24402622a8f2b0df"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

require "formula"
require "language/go"
require 'erb'


class PachctlAT110 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.0-e93c7d38abb977342e9382e140f8ca4c7bbc5b51/pachctl_1.10.0-e93c7d38abb977342e9382e140f8ca4c7bbc5b51_darwin_amd64.zip"
  sha256 "bd7d879a0c25a14862b7660d15212ecb037ea38fd502cfbfcf3628f73e20112e"
  version "v1.10.0-e93c7d38abb977342e9382e140f8ca4c7bbc5b51"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

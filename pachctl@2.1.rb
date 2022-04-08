require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.5-b125d8c099883046e1d6926fa808625ee902fa47/pachctl_2.1.5-b125d8c099883046e1d6926fa808625ee902fa47_darwin_amd64.zip"
  sha256 "4a16427506d0ede436b348329c5d6a31f635c3644492f166009fece30783c0cd"
  version "v2.1.5-b125d8c099883046e1d6926fa808625ee902fa47"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

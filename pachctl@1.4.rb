require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.2/pachctl_1.4.2_darwin_amd64.zip"
  sha256 "93ce41f5934add8b834eec0d85868de4369c85ea11177b4b1bb178ecdc58ffd4"
  version "v1.4.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

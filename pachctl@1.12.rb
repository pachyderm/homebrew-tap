require "formula"
require "language/go"
require 'erb'


class PachctlAT112 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.12.4/pachctl_1.12.4_darwin_amd64.zip"
  sha256 "41322c18ac2fd483463fd5032ecc123e39ee33b8422b9cd16bc1ad5eabc12010"
  version "v1.12.4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.0rc4/pachctl_1.9.0rc4_darwin_amd64.zip"
  sha256 "35d6311e752479e1ca9012642ad5f754abe3edc055bfa347401e9a5b609affff"
  version "v1.9.0rc4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

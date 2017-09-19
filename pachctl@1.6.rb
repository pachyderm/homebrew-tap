require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.0rc4/pachctl_1.6.0rc4_darwin_amd64.zip"
  sha256 "8fb2c01aad47dd0c71ebc83952b9a73852fc3248d291f5ed3f9f386eba33ea09"
  version "v1.6.0rc4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

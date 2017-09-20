require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.0rc5/pachctl_1.6.0rc5_darwin_amd64.zip"
  sha256 "8fb78e7f54ee2bb481639ac40dd9bcc36987c5d323346f69583723c566922053"
  version "v1.6.0rc5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

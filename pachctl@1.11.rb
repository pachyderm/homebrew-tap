require "formula"
require "language/go"
require 'erb'


class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.1/pachctl_1.11.1_darwin_amd64.zip"
  sha256 "f48ffacd204f47adeed94a05e7b822b5b4c5e919ca7cdaa9f52c8b6483e21f4b"
  version "v1.11.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

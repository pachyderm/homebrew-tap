require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.12/pachctl_1.9.12_darwin_amd64.zip"
  sha256 "41dbc1e4d2d02dc66b695841594d688915c59c0b7bb10cc27d97187c6ef57a45"
  version "v1.9.12"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

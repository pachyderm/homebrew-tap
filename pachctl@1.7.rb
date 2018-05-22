require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.2/pachctl_1.7.2_darwin_amd64.zip"
  sha256 "814d914d18f4d5fdf95a0093cd5a0117c3b66389c21f3db7994f05688fc1d352"
  version "v1.7.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

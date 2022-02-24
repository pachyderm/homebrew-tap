require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.8/pachctl_2.0.8_darwin_amd64.zip"
  sha256 "d861f0407fab9fb6c175733d69f414a9937ac99eae448ce30a440ab9b1892ee4"
  version "v2.0.8"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

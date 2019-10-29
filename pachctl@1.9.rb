require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.8/pachctl_1.9.8_darwin_amd64.zip"
  sha256 "b96cd5ebe665ca1118cc6062e4fca796ee0c829f5f868ec3c810d80924a50aa1"
  version "v1.9.8"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

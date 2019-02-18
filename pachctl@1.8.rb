require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.5/pachctl_1.8.5_darwin_amd64.zip"
  sha256 "f096d0153150614b9be8d66116790d7fd3052185d7c4e723d07c576899038394"
  version "v1.8.5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

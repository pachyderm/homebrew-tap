require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.2/pachctl_1.7.2_darwin_amd64.zip"
  sha256 "9a4ed04f59650e05b8eb1427cd0eae9ea11cd118ed4a4990d67109bff9e8baac"
  version "v1.7.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.6/pachctl_1.7.6_darwin_amd64.zip"
  sha256 "370a92b7b97f3240ad514313bb21747cb5675879bfb55a787d69f4d47bb6adce"
  version "v1.7.6"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

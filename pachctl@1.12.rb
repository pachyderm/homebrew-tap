require "formula"
require "language/go"
require 'erb'


class PachctlAT112 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.12.0-rc2/pachctl_1.12.0-rc2_darwin_amd64.zip"
  sha256 "96068faa402ed87ab4e4dd83be5bd04212c7163082cf6f77f88b248f9f5db3a5"
  version "v1.12.0-rc2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

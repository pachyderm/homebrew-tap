require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.0.1-RCX0001/pachctl_1.0.1-RCX0001_darwin_amd64.zip"
  sha256 "2ee22bb66d724ab34ecc0d9600fd2b218590842ecddabbeaa858cf8d140f42b8"
  version "v1.0.1-RCX0001"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

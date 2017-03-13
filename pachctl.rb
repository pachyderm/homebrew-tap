require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.16-d78c0b711a995cf6c027c5e35354004a40bc0723/pachctl_1.3.16-d78c0b711a995cf6c027c5e35354004a40bc0723_darwin_amd64.zip"
  sha256 "a658648c75d6ad6044ca1aa1887dde0b51514c2fcc4dfc292f279b3c999749e8"
  version "v1.3.16-d78c0b711a995cf6c027c5e35354004a40bc0723"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.7-eaf657159306c7c82479aae9c91a3d360603fbc3/pachctl_1.9.7-eaf657159306c7c82479aae9c91a3d360603fbc3_darwin_amd64.zip"
  sha256 "38acfef24ee0dea9b724716a8c8bdc987b3da85b9c9a1ffba9d3ad14876c84e7"
  version "v1.9.7-eaf657159306c7c82479aae9c91a3d360603fbc3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

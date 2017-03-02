require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.11/pachctl_1.3.11_darwin_amd64.zip"
  sha256 "9c3309bba6c9dbe6ef639477438a703d75e2a01c0a80d85ebafb32e10f06ad16"
  version "v1.3.11"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

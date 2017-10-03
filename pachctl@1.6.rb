require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.0rc9/pachctl_1.6.0rc9_darwin_amd64.zip"
  sha256 "dc6081e9564b613cd4c1481d3e1fb472dc6009edfafc929047ae8e05399a660a"
  version "v1.6.0rc9"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

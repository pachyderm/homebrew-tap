require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.0/pachctl_1.9.0_darwin_amd64.zip"
  sha256 "15a29760c736c9e81dc81ff9b64a37dd5cf275c7808b6ee20417cb5088dbc444"
  version "v1.9.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

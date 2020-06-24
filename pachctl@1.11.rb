require "formula"
require "language/go"
require 'erb'


class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.0-beta2/pachctl_1.11.0-beta2_darwin_amd64.zip"
  sha256 "91c99a1783dc724b1fd14516e4426d0c5aed67e72cad29c43819d41ba2c2bbef"
  version "v1.11.0-beta2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

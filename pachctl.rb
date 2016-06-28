require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.0.1-RCX10/pachctl_1.0.1-RCX10_darwin_amd64.zip"
  sha256 "ef0bd035bff347f38ef91f800aa6332113c64cf6f7258b22b2a4843cec5a98e5"
  version "v1.0.1-RCX10"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

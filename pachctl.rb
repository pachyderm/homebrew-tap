require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v0.0.112358/pachctl_0.0.112358_darwin_amd64.zip"
  sha256 "338b4c5da62b4374cbb22b0adf4905dd2db56eeaf7a58ff0920a5ac1710f5efb"
  version "v0.0.112358"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

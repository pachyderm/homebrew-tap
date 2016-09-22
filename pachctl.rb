require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.0-RC2/pachctl_1.2.0-RC2_darwin_amd64.zip"
  sha256 "97c65c8698c1e238d387e5434f28c522323d44dd6087bbee24a5b8e967cbce72"
  version "v1.2.0-RC2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

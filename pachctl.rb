require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.0/pachctl_1.3.0_darwin_amd64.zip"
  sha256 "de0eb28f028dace7c18d2d92bbb6f518d51e43e62255c2e80dad4a5c944be17e"
  version "v1.3.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

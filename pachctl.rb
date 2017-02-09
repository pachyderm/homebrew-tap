require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.5/pachctl_1.3.5_darwin_amd64.zip"
  sha256 "d7f57965272e1bf364fee5b502e6c0ab46f0c9577dfb6d4f068ea227664e5e22"
  version "v1.3.5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

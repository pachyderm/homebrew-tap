require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.6/pachctl_1.2.6_darwin_amd64.zip"
  sha256 "bc42e7602da61c0abe0a1897f075096b4afaf822edda05a81b18642bc62ad4c4"
  version "v1.2.6"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

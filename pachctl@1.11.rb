require "formula"
require "language/go"
require 'erb'


class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.3/pachctl_1.11.3_darwin_amd64.zip"
  sha256 "0cda396a41953e959c21fee7f35f6c921bdd870397f405a2f30f048c96aee180"
  version "v1.11.3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

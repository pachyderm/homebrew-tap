require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.6/pachctl_1.2.6_darwin_amd64.zip"
  sha256 "c0defb0875409a7848658dbaf5bd87436efec45e0871e6daa6dbcf75e4ecbb65"
  version "v1.2.6"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

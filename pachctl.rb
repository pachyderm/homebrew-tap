require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.0-RC1/pachctl_1.2.0-RC1_darwin_amd64.zip"
  sha256 "ddb57c9f6df17b7f36f36ce36b6b68af4efd8f52e5aafb78821ff42f405a58ed"
  version "v1.2.0-RC1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

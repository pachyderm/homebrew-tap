require "formula"
require "language/go"
require 'erb'


class PachctlAT111 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.11.0-alpha1/pachctl_1.11.0-alpha1_darwin_amd64.zip"
  sha256 "bb0fad548d1d71955ace5de17d444435653dc57fa8dda6169991c28f769d9ff8"
  version "v1.11.0-alpha1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

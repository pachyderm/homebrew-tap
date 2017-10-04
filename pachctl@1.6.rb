require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.0/pachctl_1.6.0_darwin_amd64.zip"
  sha256 "c5bea04d8fb52bf49ffe4c691a86845961ee5fd78e1c37923c54ee0e386dc246"
  version "v1.6.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

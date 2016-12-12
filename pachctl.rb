require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.1/pachctl_1.3.1_darwin_amd64.zip"
  sha256 "1e7a4ae09fd9444853f8ab4323b03aa78d6d232a27c23cd735bc43a20240cd0c"
  version "v1.3.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

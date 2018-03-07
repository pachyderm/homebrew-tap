require "formula"
require "language/go"
require 'erb'


class PachctlAT17 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.7.0-e5352a5c2b844f44edaffd317fbf6b33cbdbb15b/pachctl_1.7.0-e5352a5c2b844f44edaffd317fbf6b33cbdbb15b_darwin_amd64.zip"
  sha256 "e9181b17bc250cf6e6a92bc64da4c1043edfb34b2c5c18012206d3ffd5022a43"
  version "v1.7.0-e5352a5c2b844f44edaffd317fbf6b33cbdbb15b"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

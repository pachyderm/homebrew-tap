require "formula"
require "language/go"
require 'erb'


class PachctlAT113 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.13.1/pachctl_1.13.1_darwin_amd64.zip"
  sha256 "0966f37501baaf5efe13bbeddfcfa31715c5c9f1809ff46c115debbbab1ecd42"
  version "v1.13.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.2/pachctl_2.1.2_darwin_amd64.zip"
  sha256 "af16b642b74ab1821c168a9ddbcd53c19fbae658364e5d2e8d4ea0aefff93d36"
  version "v2.1.2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

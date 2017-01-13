require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.4/pachctl_1.3.4_darwin_amd64.zip"
  sha256 "38a4dcb7300de70ea98e9485d6966fb15f45754e68fd7c79e66998d657d4c79e"
  version "v1.3.4"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

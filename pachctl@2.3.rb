require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.0-alpha.1/pachctl_2.3.0-alpha.1_darwin_amd64.zip"
  sha256 "083a09b55ba81e68d8ce1e07336427f9a56b95a5b4fe8a4b972c5896ae2f3391"
  version "v2.3.0-alpha.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

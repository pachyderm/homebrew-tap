require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.0-alpha.23/pachctl_2.0.0-alpha.23_darwin_amd64.zip"
  sha256 "704000d1694b4b1c7b7ffbcd63526b02b5fccbbf39466371d99736be3870db80"
  version "v2.0.0-alpha.23"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

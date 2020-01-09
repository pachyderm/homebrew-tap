require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.10-83bbb807e7c52289171d7a2f36aff583d065b08e/pachctl_1.9.10-83bbb807e7c52289171d7a2f36aff583d065b08e_darwin_amd64.zip"
  sha256 "6677e182e43387826798ea5f373a1fcd8c2c8bb7d380af483e5acfb3f40c3067"
  version "v1.9.10-83bbb807e7c52289171d7a2f36aff583d065b08e"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

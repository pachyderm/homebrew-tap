require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.2.6/pachctl_1.2.6_darwin_amd64.zip"
  sha256 "ed550d4061daf3df4d201f95ef89a02f95b7921c45dd4911f353beb717c5f632"
  version "v1.2.6"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

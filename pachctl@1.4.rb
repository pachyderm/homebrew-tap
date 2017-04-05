require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.1/pachctl_1.4.1_darwin_amd64.zip"
  sha256 "e13b1b363e8caae1d51b42e437dd15810b39f7817afbc8775bdce567a2c03505"
  version "v1.4.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

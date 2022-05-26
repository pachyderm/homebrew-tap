require "formula"
require "language/go"
require 'erb'


class PachctlAT22 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.2.1/pachctl_2.2.1_darwin_amd64.zip"
  sha256 "21baa857f0eff0d6f8e5382ca35272fe48792e68174e03ef8cadfbdda540ce9a"
  version "v2.2.1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

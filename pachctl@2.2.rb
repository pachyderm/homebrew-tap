require "formula"
require "language/go"
require 'erb'


class PachctlAT22 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.2.0-f938b538f558b48341e5e520c7aa3c14e0c6e34a/pachctl_2.2.0-f938b538f558b48341e5e520c7aa3c14e0c6e34a_darwin_amd64.zip"
  sha256 "68b74863653550bf3d5029a4a27bf08e4bbc5d2745951653c61149016504077f"
  version "v2.2.0-f938b538f558b48341e5e520c7aa3c14e0c6e34a"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

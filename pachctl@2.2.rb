require "formula"
require "language/go"
require 'erb'


class PachctlAT22 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.2.5/pachctl_2.2.5_darwin_amd64.zip"
  sha256 "8257aa1ea9bebab9e7b49391ca226b7ec8be0a5acf85e5d35750187fc2bd406b"
  version "v2.2.5"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

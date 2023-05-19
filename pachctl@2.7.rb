require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230519"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230519/pachctl_2.7.0-nightly.20230519_darwin_amd64.zip"
    sha256 "1b700fd0d032fa20ebca57bb93ecbf38df3ea086a32f627472e0ba63b36e7c27"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230519/pachctl_2.7.0-nightly.20230519_darwin_arm64.zip"
    sha256 "bd9be2bc34e41d1bf9e9f4549aef2130d1b7d73fdcbed70fb236f48346b7c85f"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

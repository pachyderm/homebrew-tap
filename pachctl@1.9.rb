require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.3-6221e9ed57a10b39d363e0e97cdd6e4e41796af2/pachctl_1.9.3-6221e9ed57a10b39d363e0e97cdd6e4e41796af2_darwin_amd64.zip"
  sha256 "369cce92ba4ed778f5681ee4a9137c46d1dda3055da18ad7b13ffbe7c5d516af"
  version "v1.9.3-6221e9ed57a10b39d363e0e97cdd6e4e41796af2"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

require "formula"
require "language/go"
require 'erb'


class PachctlAT29 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.9.0-alpha.1"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-alpha.1/pachctl_2.9.0-alpha.1_darwin_amd64.zip"
    sha256 "8ce1b765887dc4602a2847970f75ffa011c04a9e67aa0fe6a6407cf2bbeffe4f"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.9.0-alpha.1/pachctl_2.9.0-alpha.1_darwin_arm64.zip"
    sha256 "3b7a3884113f17c26e58581df28b402a73de77e3c9cafc135b6b2b7313dcfb6c"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

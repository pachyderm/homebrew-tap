require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-rc.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-rc.2/pachctl_2.5.0-rc.2_darwin_amd64.zip"
    sha256 "a926e675ca3c44ea6c6009b5b8ddb1846be2528e0dcf3bdef8bb6f1f9d202e6c"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-rc.2/pachctl_2.5.0-rc.2_darwin_arm64.zip"
    sha256 "e42e60d25baedd158698f6275cc1df61d76c6a27bb6fb35a4287a0cad524cef2"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

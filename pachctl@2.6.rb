require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.0-rc.1"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-rc.1/pachctl_2.6.0-rc.1_darwin_amd64.zip"
    sha256 "be2e0dfb63cab66f1f69e0ad206fa41d5a5df63f004fcde33d9ddb1085f06bb8"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-rc.1/pachctl_2.6.0-rc.1_darwin_arm64.zip"
    sha256 "bafb219a4812625911ade1e973e721c3f23e433d1d9bda45abead179cfc44455"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

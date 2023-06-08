require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-alpha.2"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-alpha.2/pachctl_2.7.0-alpha.2_darwin_amd64.zip"
    sha256 "1a407c83d94073e02f3d5ad3466d568e09086b52cad7fbe5ba36e7fd93cbf748"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-alpha.2/pachctl_2.7.0-alpha.2_darwin_arm64.zip"
    sha256 "b32a72effad46b8d34789bad280236f427a76050564fb476e47fb8350eb846c3"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.1"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.1/pachctl_2.3.1_darwin_amd64.zip"
    sha256 "75b91d669320a8d7967d8b32a4254cbb307aaffb533b2be211cd74064362775e"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.1/pachctl_2.3.1_darwin_arm64.zip"
    sha256 "b3bf9c9d59715df1c40a9c377be9ba5cab2ffede76d12ca74c3e74fc9de313fc"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

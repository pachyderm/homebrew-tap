require "formula"
require "language/go"
require 'erb'


class PachctlAT25 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.5.0-rc.3"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-rc.3/pachctl_2.5.0-rc.3_darwin_amd64.zip"
    sha256 "51747b34f72651b761e4dc5bebe87d97329d0371094c7b98efdf54bb84871896"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.5.0-rc.3/pachctl_2.5.0-rc.3_darwin_arm64.zip"
    sha256 "c011ff0011af6ae9370ccbc52555de94e0c964959764d1fa62ab2221877b7e55"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

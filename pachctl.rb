require "formula"
require "language/go"
require "erb"

class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.7"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.7/pachctl_2.8.7_darwin_arm64.zip"
      sha256 "bb01c86ddddcfb01dab5ab13da257a10b6c79e9e831a4fb208a439f2386fef5e"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.7/pachctl_2.8.7_darwin_amd64.zip"
      sha256 "fd5e0c05474d2d9ca3b87f39feca324d4910b7a3fd820c91ad692ae670f2ac8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.7/pachctl_2.8.7_linux_arm64.tar.gz"
      sha256 "71c8b402d94f53d2b213cf212c010145df35336c81f202eb331b653aecc7205b"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.7/pachctl_2.8.7_linux_amd64.tar.gz"
      sha256 "ea9e313287f823647220e8470913e31fa8f8c383baf89679f38ad89b2bb7490e"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

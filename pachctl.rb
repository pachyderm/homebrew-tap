require "formula"
require "language/go"
require "erb"

class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.10.4"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.4/pachctl_2.10.4_darwin_arm64.zip"
      sha256 "0b9ec341378df020409ae2f86d5b2ee47125cd272aeb410a5518c0287fef3d07"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.4/pachctl_2.10.4_darwin_amd64.zip"
      sha256 "55bad8538ad8d6d7865803f99b435eaabccdf3027a9878ffe49dd6d10849c30d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.4/pachctl_2.10.4_linux_arm64.tar.gz"
      sha256 "36505351243ca047a3adad81e2211b49984d1c01c9f6557545c24bf31552cddb"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.4/pachctl_2.10.4_linux_amd64.tar.gz"
      sha256 "ea99ced63b9fd515f0624762a6db9eda19fb6add6e9e04bce815fcb8933cb2be"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

require "formula"
require "language/go"
require "erb"

class PachctlAT211 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.11.2"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.2/pachctl_2.11.2_darwin_arm64.zip"
      sha256 "1639e487f7007dc4cff405de00080b3ecb90b6c6525e360327e257fc291ee19b"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.2/pachctl_2.11.2_darwin_amd64.zip"
      sha256 "68bbaef3efe803d2d950c1c6c9653eea87ec327da20f27af264bda3d95f882bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.2/pachctl_2.11.2_linux_arm64.tar.gz"
      sha256 "37afc480e66c43e43e1e9defce2170f773c504feb27ad226dc4c5e84acb889fd"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.2/pachctl_2.11.2_linux_amd64.tar.gz"
      sha256 "6776ec4e16770a33a80e11249b054caa474fc15fcd9bcc2147e37d4224de4e39"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

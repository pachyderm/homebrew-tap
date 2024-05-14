require "formula"
require "language/go"
require "erb"

class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.9"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.9/pachctl_2.8.9_darwin_arm64.zip"
      sha256 "354340ed40b6420c6bd4fbdcf7fdbb2732314a98dd0a42588bf2edc9ababb0bd"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.9/pachctl_2.8.9_darwin_amd64.zip"
      sha256 "fd55015ceeec985b1e85bad1213758675791797bbca2613d0591875be0a5e920"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.9/pachctl_2.8.9_linux_arm64.tar.gz"
      sha256 "46480d5f7ca15ea3e5eb4b850309d4fdea50111d86c58fb30ed12618890d0d6b"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.9/pachctl_2.8.9_linux_amd64.tar.gz"
      sha256 "cfbea02e5f01216d7b0752fbe5b2cdda3d5909f7419c2bf4a563ffec54c755f9"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

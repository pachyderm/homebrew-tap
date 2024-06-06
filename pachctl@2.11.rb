require "formula"
require "language/go"
require "erb"

class PachctlAT211 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.11.0-alpha.3"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.3/pachctl_2.11.0-alpha.3_darwin_arm64.zip"
      sha256 "00a69509cd580f4e7181aac755b6b614968ad95b00ede53a78fe1553ef11a2a6"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.3/pachctl_2.11.0-alpha.3_darwin_amd64.zip"
      sha256 "d0097af2897e8dee23ef459e4883cfdb4beb1fe85382dbe0070cd736ad09f3a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.3/pachctl_2.11.0-alpha.3_linux_arm64.tar.gz"
      sha256 "3cc250786c8436db21ac4fc4a8d5db390597e857ea6f0561fa35156b7dc777b8"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.3/pachctl_2.11.0-alpha.3_linux_amd64.tar.gz"
      sha256 "53396507664d5597689f50a02ef42c90a718f1f1de7ac6483c79b64b3fcea964"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

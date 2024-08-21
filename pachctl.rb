require "formula"
require "language/go"
require "erb"

class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.11.1"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.1/pachctl_2.11.1_darwin_arm64.zip"
      sha256 "4f8fd6130a277c7275430814c15b183803eb1bab2bdc50fb8f16d10fc7a21f28"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.1/pachctl_2.11.1_darwin_amd64.zip"
      sha256 "5f2a14efed5daad5970abda01d4da7e6f270b189de4b76cbeef37aa0b4f3b59a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.1/pachctl_2.11.1_linux_arm64.tar.gz"
      sha256 "4e2b34ac6aa7163d87e41ed874f27a7938e5193555ac73c11975747de57a69fb"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.1/pachctl_2.11.1_linux_amd64.tar.gz"
      sha256 "6724fcbcb3bc1166add124b358ea8fc08843c76a97c6e2b5c1bac9c97414fddd"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

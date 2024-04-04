require "formula"
require "language/go"
require "erb"

class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.6"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.6/pachctl_2.8.6_darwin_arm64.zip"
      sha256 "ce8ad4a178103913af7c02b11d95c4d28e5cc4b8094d46a3a0f81382a78d8e23"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.6/pachctl_2.8.6_darwin_amd64.zip"
      sha256 "291b6ffcccc1f1225275e56d3a39b8c1fb8b0cd67f9bbdf38735cc4e18b9bf61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.6/pachctl_2.8.6_linux_arm64.tar.gz"
      sha256 "203586a1fc53ede3706946ef3fd520c63813f360a1b4de2fb18df56d362eaac3"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.6/pachctl_2.8.6_linux_amd64.tar.gz"
      sha256 "ec738e87c0ae3d42e47f6ee5bd0ee15fb6d87ec12fcbe953fd72c8414ddfa25d"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

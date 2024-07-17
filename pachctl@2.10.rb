require "formula"
require "language/go"
require "erb"

class PachctlAT210 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.10.7"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.7/pachctl_2.10.7_darwin_arm64.zip"
      sha256 "138bb23c2c3985a4f4d568903b1e221ee4b4b63191385b778f7168c2cd665751"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.7/pachctl_2.10.7_darwin_amd64.zip"
      sha256 "d859974714c035d2503f39936ebae5c1b435c5bd5a765e2e6e39a9c84a974f0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.7/pachctl_2.10.7_linux_arm64.tar.gz"
      sha256 "9b0585078e95a3860c392901a111cd59fb783ee7acbf8a553eb468e66fbca552"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.7/pachctl_2.10.7_linux_amd64.tar.gz"
      sha256 "b458b159fa85c9a62745af7102e27430cd79c591490de061adbe89acc849d22e"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

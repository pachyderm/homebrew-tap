require "formula"
require "language/go"
require "erb"

class PachctlAT211 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.11.0-alpha.1"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.1/pachctl_2.11.0-alpha.1_darwin_arm64.zip"
      sha256 "28b389b6d42ed6b5a077d4ad6e376bf6ae35acaf9e3a22096d18967eed4b8f96"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.1/pachctl_2.11.0-alpha.1_darwin_amd64.zip"
      sha256 "40db8c924ed5de4e671f7c4754ef3aade76798eb0cb6041a122e7fa41d9b76f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.1/pachctl_2.11.0-alpha.1_linux_arm64.tar.gz"
      sha256 "ecff94351d74ff43e9d84be1af4fe4833ef6b761a43deacefb93ef928fe2270f"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.11.0-alpha.1/pachctl_2.11.0-alpha.1_linux_amd64.tar.gz"
      sha256 "bb490da12e07fe1267e524ffee39cdab9a8b78fa1aaba0c09d0a2c6e6024dcaf"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

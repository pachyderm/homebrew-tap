require "formula"
require "language/go"
require 'erb'


class PachctlAT112 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.12.0/pachctl_1.12.0_darwin_amd64.zip"
  sha256 "c93510e8b2c2eb8a8786afc30148e01fff4b6c52dcb1dd21a21c46f41424028f"
  version "v1.12.0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

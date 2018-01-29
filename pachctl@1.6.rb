require "formula"
require "language/go"
require 'erb'


class PachctlAT16 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.6.8/pachctl_1.6.8_darwin_amd64.zip"
  sha256 "92b93dd53ac97230b8a468dd17ca51bf73a0769483dd79576b43f6ddf6688b6e"
  version "v1.6.8"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

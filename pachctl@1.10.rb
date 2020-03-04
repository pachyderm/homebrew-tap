require "formula"
require "language/go"
require 'erb'


class PachctlAT110 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.10.0-4c455556a4051d00369027edd7c264e927bb795b/pachctl_1.10.0-4c455556a4051d00369027edd7c264e927bb795b_darwin_amd64.zip"
  sha256 "525acb2104b06e378c781cd37adedfd67c95da8e169acb39a851c966b3f10367"
  version "v1.10.0-4c455556a4051d00369027edd7c264e927bb795b"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

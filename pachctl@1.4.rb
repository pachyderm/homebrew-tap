require "formula"
require "language/go"
require 'erb'


class PachctlAT14 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.4.8-pici-custom-1/pachctl_1.4.8-pici-custom-1_darwin_amd64.zip"
  sha256 "43e8eb49f02a85b6e799b93af6d58991f1b971b39aa60c649ff8983cd04f7e52"
  version "v1.4.8-pici-custom-1"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

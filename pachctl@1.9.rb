require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.7-ccc5663b82df231fd793e21e60252a6c0eaa488a/pachctl_1.9.7-ccc5663b82df231fd793e21e60252a6c0eaa488a_darwin_amd64.zip"
  sha256 "03719c8818b950fc6d813040b7707d457ce6ef45497b43ff6f6154b5e3ec8bce"
  version "v1.9.7-ccc5663b82df231fd793e21e60252a6c0eaa488a"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

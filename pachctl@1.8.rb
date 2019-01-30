require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.2-267bb46df4269caf48ff5ffdd247c5bcbffc0cd9/pachctl_1.8.2-267bb46df4269caf48ff5ffdd247c5bcbffc0cd9_darwin_amd64.zip"
  sha256 "b3eb280e355309b833768e644fdaf41709a8608dcdd904ccf29c5bb3e0df472a"
  version "v1.8.2-267bb46df4269caf48ff5ffdd247c5bcbffc0cd9"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

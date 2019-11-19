require "formula"
require "language/go"
require 'erb'


class PachctlAT19 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.9.8-b2aa2ff10546da504b2bf1669b51de4b12e2b594/pachctl_1.9.8-b2aa2ff10546da504b2bf1669b51de4b12e2b594_darwin_amd64.zip"
  sha256 "0616abce6b329a751c0cc065a314fe4c7b427965d562e19b8f93ed13d41d464b"
  version "v1.9.8-b2aa2ff10546da504b2bf1669b51de4b12e2b594"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

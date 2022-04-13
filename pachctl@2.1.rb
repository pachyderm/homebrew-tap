require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.5-57e55e7235526c8fa9f24f9687781689d0c1aca0/pachctl_2.1.5-57e55e7235526c8fa9f24f9687781689d0c1aca0_darwin_amd64.zip"
  sha256 "66ab31f65d2dea02f50bbd5fe83f98f2d51cdc85ea876fb4067b9f3dc4265105"
  version "v2.1.5-57e55e7235526c8fa9f24f9687781689d0c1aca0"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

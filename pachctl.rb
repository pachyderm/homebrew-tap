require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.3.10/pachctl_1.3.10_darwin_amd64.zip"
  sha256 "071aa7b9cb45c376ddc44bbe3e78ef34373a723ced14eb6528ac9d99a2505793"
  version "v1.3.10"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

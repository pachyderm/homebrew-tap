require "formula"
require "language/go"
require 'erb'


class PachctlAT18 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v1.8.2-c5c9defc1862febc0f633b4a211692fa5c84c69f/pachctl_1.8.2-c5c9defc1862febc0f633b4a211692fa5c84c69f_darwin_amd64.zip"
  sha256 "15a176af6ca883375f10e3861678020fd9c7110788096442946a45515a7c1cec"
  version "v1.8.2-c5c9defc1862febc0f633b4a211692fa5c84c69f"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

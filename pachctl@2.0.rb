require "formula"
require "language/go"
require 'erb'


class PachctlAT20 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.0.3/pachctl_2.0.3_darwin_amd64.zip"
  sha256 "dea5e44e09ad5688f53ccf6356a14e94e74d390a5cfcad4fd4b4881643a11583"
  version "v2.0.3"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-nightly.20231129"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20231129/pachctl_2.8.0-nightly.20231129_darwin_amd64.zip"
    sha256 "66032f801268eceed4f7bf20df92c711fdb9609b09e4b6398727ea134f8c5226"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20231129/pachctl_2.8.0-nightly.20231129_darwin_arm64.zip"
    sha256 "6cbe9b20858b56dc39e16e26165adcafa67d365260aa6a77f7975ea3931e0fe8"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

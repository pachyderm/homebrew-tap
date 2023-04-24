require "formula"
require "language/go"
require 'erb'


class PachctlAT26 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.6.0-nightly.20230424"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230424/pachctl_2.6.0-nightly.20230424_darwin_amd64.zip"
    sha256 "b1c4875b9b7dc1be2e4272c21fc9fbabb09419f1dd0c5631fc41116bff5486a1"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.6.0-nightly.20230424/pachctl_2.6.0-nightly.20230424_darwin_arm64.zip"
    sha256 "1c167b689f05ffcd3b723b3df6526fe9ebd059484a819f51e4ea87d6eb650603"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

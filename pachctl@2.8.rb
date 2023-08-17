require "formula"
require "language/go"
require 'erb'


class PachctlAT28 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.8.0-nightly.20230817"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230817/pachctl_2.8.0-nightly.20230817_darwin_amd64.zip"
    sha256 "5b0c3cbe3084d186df21971fb3249977e961933a2fbdbb7720d792eaf2436a7b"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.8.0-nightly.20230817/pachctl_2.8.0-nightly.20230817_darwin_arm64.zip"
    sha256 "959714ccd255fa9da57e295b367b6edc232875eb9dcc474fa0edabf695289890"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

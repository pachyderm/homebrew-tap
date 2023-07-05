require "formula"
require "language/go"
require 'erb'


class PachctlAT27 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.7.0-nightly.20230705"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230705/pachctl_2.7.0-nightly.20230705_darwin_amd64.zip"
    sha256 "9fc1d0772d029df1d104a698bc76f37e06e5b163ca22c0e386e54e0c18a32d81"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.7.0-nightly.20230705/pachctl_2.7.0-nightly.20230705_darwin_arm64.zip"
    sha256 "437d961c54fc39c99233420e62620c7ee74951e9bbb93102cc4f642e74925469"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

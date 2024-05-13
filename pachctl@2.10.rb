require "formula"
require "language/go"
require "erb"

class PachctlAT210 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.10.0-rc.3"

  on_macos do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-rc.3/pachctl_2.10.0-rc.3_darwin_arm64.zip"
      sha256 "6c377621f8431060a11105fa89df1a06f310db4f124646c6874caae6da4da567"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-rc.3/pachctl_2.10.0-rc.3_darwin_amd64.zip"
      sha256 "f3e9d250285a5236480a21a2f864bd3855b95ef5245aaf3fde1079015d7d57b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-rc.3/pachctl_2.10.0-rc.3_linux_arm64.tar.gz"
      sha256 "4c0d1b190fb4c884a0a3f55f3ad798e777d43259e24c6c3f346be7b8d4109eac"
    end

    on_intel do
      url "https://github.com/pachyderm/pachyderm/releases/download/v2.10.0-rc.3/pachctl_2.10.0-rc.3_linux_amd64.tar.gz"
      sha256 "378cc318d1701615844b01db25c529778cbf6570434c69604925b95f429dfb92"
    end
  end

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end
end

require "formula"
require "language/go"
require 'erb'


class PachctlAT23 < Formula
  homepage "github.com/pachyderm/pachyderm"
  version "v2.3.5"

  if Hardware::CPU.intel?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.5/pachctl_2.3.5_darwin_amd64.zip"
    sha256 "7c54f0c2aa1c8a10531d5c47bdc1cd9c43801d2fe409d6b15ff0e89587cf280c"

    def install
      bin.install buildpath/"pachctl"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/pachyderm/pachyderm/releases/download/v2.3.5/pachctl_2.3.5_darwin_arm64.zip"
    sha256 "932ac523b519cd66e36341ca973c88ec063f70926ed0556fe78e95c46b766a10"

    def install
      bin.install buildpath/"pachctl"
    end
  end



  test do
    system "#{bin}/pachctl version"
  end

end

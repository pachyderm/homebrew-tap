require "formula"
require "language/go"
require 'erb'


class PachctlAT21 < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/releases/download/v2.1.3-3b3d93acebc7f053eec0382705fa0c25c224bcbd/pachctl_2.1.3-3b3d93acebc7f053eec0382705fa0c25c224bcbd_darwin_amd64.zip"
  sha256 "fc4527c1c68a26b8ded52134f83d7fea6139da862798c5c842fe12c939c1558c"
  version "v2.1.3-3b3d93acebc7f053eec0382705fa0c25c224bcbd"

  def install
    bin.install buildpath/"pachctl"
  end

  test do
    system "#{bin}/pachctl version"
  end

end

require "formula"
require "language/go"

class Pachyderm < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/archive/v1.0.356.tar.gz"
  sha1 ""

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    mkdir_p buildpath/"src/github.com/pachyderm"
    ln_s buildpath, buildpath/"src/github.com/pachyderm/pachyderm"

    cd "src/github.com/pachyderm/pachyderm" do
#      system "make", "deps-client"
      system "make", "homebrew"
#      system "GO15VENDOREXPERIMENT=1 go install ./src/server/cmd/pachctl"
      bin.install buildpath/"bin/pachctl"
    end

  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test pachyderm`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/pachctl version"
  end
end

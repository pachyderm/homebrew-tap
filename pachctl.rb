require "formula"
require "language/go"
require 'erb'


class Pachctl < Formula
  homepage "github.com/pachyderm/pachyderm"
  url "https://github.com/pachyderm/pachyderm/archive/v1.0.0.522.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  depends_on "go" => :build


  SHIM = <<-RUNSHIM
#!/bin/bash

PACH_BUILD_NUMBER=<%= patch_version %> _pachctl $@
RUNSHIM

  def install
    generate_shim

    ENV["GOPATH"] = buildpath
    mkdir_p buildpath/"src/github.com/pachyderm"
    ln_s buildpath, buildpath/"src/github.com/pachyderm/pachyderm"

    cd "src/github.com/pachyderm/pachyderm" do
      system "make", "homebrew"

      # Rename binary for wrapping
      system "mv", buildpath/"bin/pachctl", buildpath/"bin/_pachctl"
      bin.install buildpath/"bin/_pachctl"

      # Wrap binary in shim to set versions
      shim = File.open(buildpath/"bin/pachctl", "w")
      shim << generate_shim

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

  def generate_shim
    patch_version = self.version.to_s.split(".").last
    ERB.new(SHIM).result(binding)
  end

end

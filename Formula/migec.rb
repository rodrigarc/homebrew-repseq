class Migec < Formula
  desc "MIGEC aka Molecular Identifier-Guided Error Correction pipeline. A set of tools for working with unique molecular identifier (UMI)-tagged high-throughput sequencing data. The primary focus is T- and B-cell receptor sequencing."
  homepage "http://migec.readthedocs.org/en/latest/index.html"
  url "https://github.com/mikessh/migec/releases/download/1.2.6/migec-1.2.6.zip"
  version "1.2.6"
  sha256 "a9872d6773cee978753359d6d44886cfc42f39d9ff8d85c63cd5c47ffdbd2ddc"

  depends_on :java
  depends_on "blast"

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../migec"
  end

  test do
    system "migec"
  end
end
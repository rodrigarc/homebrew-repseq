class Migec < Formula
  desc "MIGEC aka Molecular Identifier-Guided Error Correction pipeline. A set of tools for working with unique molecular identifier (UMI)-tagged high-throughput sequencing data. The primary focus is T- and B-cell receptor sequencing."
  homepage "http://migec.readthedocs.org/en/latest/index.html"
  url "https://github.com/mikessh/migec/releases/download/1.2.4a/migec-1.2.4a.zip"
  version "1.2.4-1"
  sha256 "2af2a0bcc1965d40bd308b1eb67d8144062f8063621cd8faab90b71f2c4e52e4"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../migec"
  end

  test do
    system "migec"
  end
end
class Migec < Formula
  desc "MIGEC aka Molecular Identifier-Guided Error Correction pipeline. A set of tools for working with unique molecular identifier (UMI)-tagged high-throughput sequencing data. The primary focus is T- and B-cell receptor sequencing."
  homepage "http://migec.readthedocs.org/en/latest/index.html"
  url "https://github.com/mikessh/migec/releases/download/1.2.7/migec-1.2.7.zip"
  version "1.2.7"
  sha256 "99dc973ffb4c16a1b9174069517f0fc5eb47ab3c774faa2679cb205e6566e099"

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
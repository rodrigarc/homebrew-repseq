class Migec < Formula
  desc "MIGEC aka Molecular Identifier-Guided Error Correction pipeline. A set of tools for working with unique molecular identifier (UMI)-tagged high-throughput sequencing data. The primary focus is T- and B-cell receptor sequencing."
  homepage "http://migec.readthedocs.org/en/latest/index.html"
  url "https://github.com/mikessh/migec/releases/download/1.2.4/migec-1.2.4.zip"
  version "1.2.4"
  sha256 "aa3d63ffc29c59fe0017e21b600203181326bfd31f210aa3b89098da485e6a0f"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../migec"
  end

  test do
    system "migec"
  end
end
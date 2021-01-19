class Migec < Formula
  desc "MIGEC aka Molecular Identifier-Guided Error Correction pipeline. A set of tools for working with unique molecular identifier (UMI)-tagged high-throughput sequencing data. The primary focus is T- and B-cell receptor sequencing."
  homepage "http://migec.readthedocs.org/en/latest/index.html"
  url "https://github.com/mikessh/migec/releases/download/1.2.9/migec-1.2.9.zip"
  version "1.2.9"
  sha256 "4a9ace1ab932d06154cdd3eaf6724f55c8dc5c3ce68108b8a4d30ecb0d58ea7e"

  depends_on "openjdk@8"
  depends_on "blast"

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../migec"
  end

  test do
    system "migec"
  end
end

class MigmapMacos < Formula
  desc "MIGMAP: HTS-compatible wrapper for IgBlast V-(D)-J mapping tool."
  homepage "https://github.com/mikessh/migmap"
  url "https://github.com/mikessh/migmap/releases/download/1.0.1/migmap-1.0.1.zip"
  version "1.0.1"
  sha256 "11ccbd5f2ea801676df41c5c1c75f0a1d52479a98c87ec2223f446467054f8f2"

  depends_on "igblast-macos"
  
  def install
    prefix.install Dir["*"]
    bin.install_symlink "../migmap"
  end

  test do
    system "migmap", "-h"
    system "migmap", "-S human -R IGH test/sample.fasta.gz test"
  end
end
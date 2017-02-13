class MigmapLinux < Formula
  desc "MIGMAP: HTS-compatible wrapper for IgBlast V-(D)-J mapping tool."
  homepage "https://github.com/mikessh/migmap"
  url "https://github.com/mikessh/migmap/releases/download/1.0.2/migmap-1.0.2.zip"
  version "1.0.2"
  sha256 "35936c19bb0ac8b59322ee4e602e92e90fc1afdcf0dd5018521a4b28f09f7842"

  depends_on "igblast-linux"
  
  def install
    prefix.install Dir["*"]
    bin.install_symlink "../migmap"
  end

  test do
    system "migmap", "-h"
    system "migmap", "-S human -R IGH test/sample.fasta.gz test"
  end
end
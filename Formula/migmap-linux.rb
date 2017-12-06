class MigmapLinux < Formula
  desc "MIGMAP: HTS-compatible wrapper for IgBlast V-(D)-J mapping tool."
  homepage "https://github.com/mikessh/migmap"
  url "https://github.com/mikessh/migmap/releases/download/1.0.3/migmap-1.0.3.zip"
  version "1.0.3"
  sha256 "568250fcdb213ecb06d180b17bda75e29d2550155aa7cbdf19e7728840c87535"

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
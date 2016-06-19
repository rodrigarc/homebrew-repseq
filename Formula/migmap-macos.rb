class MigmapMacos < Formula
  desc "MIGMAP: HTS-compatible wrapper for IgBlast V-(D)-J mapping tool."
  homepage "https://github.com/mikessh/migmap"
  url "https://github.com/mikessh/migmap/releases/download/1.0.0/migmap-1.0.0.zip"
  version "1.0.0"
  sha256 "8fa8aa1d59672c7add68a7f6044fa35a813ded87abcfc91fb6de7490c202d093"

  depends_on "igblast-macos"
  
  def install
    prefix.install Dir["*"]
    bin.install_symlink "../migmap"
  end

  test do
    system "migmap", "-h"
  end
end
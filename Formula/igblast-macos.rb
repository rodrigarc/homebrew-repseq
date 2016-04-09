class IgblastMacos < Formula
  desc "IgBlast: A tool for immunoglobulin (IG) and T cell receptor (TR) V domain sequences."
  homepage "http://www.ncbi.nlm.nih.gov/igblast/igblast.cgi"
  url "https://github.com/mikessh/igblast-bin/releases/download/1.0/igblast-macosx.zip"
  version "1.4.0"
  sha256 "16b5bec47ff8c52cfaaac287e487e2fea62c41a037896845c8f3e74bc160a342"

  conflicts_with "igblast-linux", :because => "also ships igblastn, igblastp and makeblastdb binaries"

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../binaries/igblastn"
    bin.install_symlink "../binaries/igblastp"
    bin.install_symlink "../binaries/makeblastdb"
  end

  test do
    system "igblastn", "-help"
    system "igblastp", "-help"
    system "makeblastdb", "-help"
  end
end
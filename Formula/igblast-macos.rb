class IgBlastMacOs < Formula
  desc "IgBlast: A tool for immunoglobulin (IG) and T cell receptor (TR) V domain sequences."
  homepage "http://www.ncbi.nlm.nih.gov/igblast/igblast.cgi"
  url "https://github.com/mikessh/igblast-bin/releases/download/1.0/igblast-macosx.zip"
  version "1.4.0"
  sha256 "1ef7dd83d0f90ede2c2982a641fc27b6d58b1e8d448e985913b210747253ed63"

  conflicts_with "igblast-linux-x64", :because => "also ships igblastn, igblastp and makeblastdb binaries"

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../bin/igblastn"
    bin.install_symlink "../bin/igblastp"
    bin.install_symlink "../bin/makeblastdb"
  end

  test do
    system "igblastn", "-help"
    system "igblastp", "-help"
    system "makeblastdb", "-help"
  end
end
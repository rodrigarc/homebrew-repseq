class IgblastMacos < Formula
  desc "IgBlast: A tool for immunoglobulin (IG) and T cell receptor (TR) V domain sequences."
  homepage "http://www.ncbi.nlm.nih.gov/igblast/igblast.cgi"
  url "https://github.com/mikessh/igblast-bin/releases/download/1.0/igblast-macosx.zip"
  version "1.4.0"
  sha256 "56ff91cab2d5bd9dfbb68220a132fdd4a95fa325d7136ea90c04ebc77ab9c7b7"

  conflicts_with "igblast-linux", :because => "also ships igblastn, igblastp and makeblastdb binaries"

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
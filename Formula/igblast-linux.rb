class IgblastLinux < Formula
  desc "IgBlast: A tool for immunoglobulin (IG) and T cell receptor (TR) V domain sequences."
  homepage "http://www.ncbi.nlm.nih.gov/igblast/igblast.cgi"
  url "https://github.com/mikessh/igblast-bin/releases/download/1.0/igblast-linux-x64.zip"
  version "1.4.0"
  sha256 "e480a37556e31e0036cee3cca159ff1639a9f07727d88da53bc952e61e409637"

  conflicts_with "blast", :because => "also ships makeblastdb binaries, use 'brew link --overwrite igblast-linux'"
  conflicts_with "igblast-macos", :because => "also ships igblastn, igblastp and makeblastdb binaries"

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
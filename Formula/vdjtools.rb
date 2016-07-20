class Vdjtools < Formula
  desc "VDJtools: a framework for post-analysis of immune repertoire sequencing data."
  homepage "http://vdjtools-doc.readthedocs.org"
  url "https://github.com/mikessh/vdjtools/releases/download/1.1.1/vdjtools-1.1.1.zip"
  version "1.1.1"
  sha256 "8ae6d2f7b95afc99505168bf6fb50707158a37816c9c50e1a8173b1707427e84"

  depends_on :java
  depends_on "gcc"
  depends_on "r"

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../vdjtools"
    system "#{bin}/vdjtools", "RInstall"
  end

  test do
    system "vdjtools"
  end
end
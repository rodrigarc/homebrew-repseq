class Vdjtools < Formula
  desc "VDJtools: a framework for post-analysis of immune repertoire sequencing data."
  homepage "http://vdjtools-doc.readthedocs.org"
  url "https://github.com/mikessh/vdjtools/releases/download/1.1.4/vdjtools-1.1.4.zip"
  version "1.1.4"
  sha256 "e5b85813aaccf1e37c3e1f9f61936ab282aec5a37455a7094ae6f5b8d229b4cb"

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
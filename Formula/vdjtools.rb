class Vdjtools < Formula
  desc "VDJtools: a framework for post-analysis of immune repertoire sequencing data."
  homepage "http://vdjtools-doc.readthedocs.org"
  url "https://github.com/mikessh/vdjtools/releases/download/1.0.8/vdjtools-1.0.8.zip"
  version "1.0.8"
  sha256 "19dfd3e71c1bd9c199fea00c56c0a90c04de2cc6402e1ea3b9f592833867e90a"

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
class Vdjtools < Formula
  desc "VDJtools: a framework for post-analysis of immune repertoire sequencing data."
  homepage "http://vdjtools-doc.readthedocs.org"
  url "https://github.com/mikessh/vdjtools/releases/download/1.1.8/vdjtools-1.1.8.zip"
  version "1.1.8"
  sha256 "41f5a64f8dc5fb02247cde90955f51a9f859334fdc03270e6dae1e5b7f322d34"

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
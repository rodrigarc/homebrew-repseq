class Vdjtools < Formula
  desc "VDJtools: a framework for post-analysis of immune repertoire sequencing data."
  homepage "http://vdjtools-doc.readthedocs.org"
  url "https://github.com/mikessh/vdjtools/releases/download/1.0.8/vdjtools-1.0.8.zip"
  version "1.0.8"
  sha256 "3011e43b6128058e2f45fb5e8a43b16b35849ba417fae5ee9ad4ce08e34bea14"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../vdjtools"
  end

  test do
    system "vdjtools"
  end
end
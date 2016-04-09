class Vdjtools < Formula
  desc "VDJtools: a framework for post-analysis of immune repertoire sequencing data."
  homepage "http://vdjtools-doc.readthedocs.org"
  url "https://github.com/mikessh/vdjtools/releases/download/1.0.8/vdjtools-1.0.8.zip"
  version "1.0.8"
  sha256 "1ef7dd83d0f90ede2c2982a641fc27b6d58b1e8d448e985913b210747253ed63"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../vdjtools"
  end

  test do
    system "vdjtools"
  end
end
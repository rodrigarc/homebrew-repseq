class Vdjtools < Formula
  desc "VDJtools: a framework for post-analysis of immune repertoire sequencing data."
  homepage "http://vdjtools-doc.readthedocs.org"
  url "https://github.com/mikessh/vdjtools/releases/download/1.1.7/vdjtools-1.1.7.zip"
  version "1.1.7"
  sha256 "1842cc229a5e0781ebbda1c34baf3c69929466fb68b637a5636a9671a0268801"

  depends_on :java
  depends_on "gcc"
  depends_on "r"

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../vdjtools-1.1.7"
    system "#{bin}/vdjtools-1.1.7", "RInstall"
  end

  test do
    system "vdjtools"
  end
end
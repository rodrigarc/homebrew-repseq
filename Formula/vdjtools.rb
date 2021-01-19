class Vdjtools < Formula
  desc "VDJtools: a framework for post-analysis of immune repertoire sequencing data."
  homepage "http://vdjtools-doc.readthedocs.org"
  url "https://github.com/mikessh/vdjtools/releases/download/1.2.1/vdjtools-1.2.1.zip"
  version "1.2.1"
  sha256 "69065a80708b0c098fa271cd3b4f4928390f2bc8476a7c2b6aa3be0f11e29ba0"

  depends_on "openjdk@8"
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

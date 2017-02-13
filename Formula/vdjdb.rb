class Vdjdb < Formula
  desc "VDJdb: a software for functional annotation of T-cell repertoires"
  homepage "https://github.com/antigenomics/vdjdb-standalone/blob/master/README.md"
  url "https://github.com/antigenomics/vdjdb-standalone/releases/download/1.1.5/vdjdb-1.1.5.zip"
  version "1.1.5"
  sha256 "a0a279eee20bad5902205836227f4fd6a300e7b46ad4fc7822189a68f1003c86"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../vdjdb"
    system "#{bin}/vdjdb", "Update"
  end

  test do
    system "vdjdb"
  end
end
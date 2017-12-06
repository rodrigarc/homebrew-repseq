class Vdjdb < Formula
  desc "VDJdb: a software for functional annotation of T-cell repertoires"
  homepage "https://github.com/antigenomics/vdjdb-standalone/blob/master/README.md"
  url "https://github.com/antigenomics/vdjdb-standalone/releases/download/1.1.7/vdjdb-1.1.7.zip"
  version "1.1.7"
  sha256 "d774d497769d3cc3542f868b8f45dbac28e51022a3e2bb88e2c3da4a299075a0"

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
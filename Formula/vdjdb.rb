class Vdjdb < Formula
  desc "VDJdb: a software for functional annotation of T-cell repertoires"
  homepage "https://github.com/antigenomics/vdjdb-standalone/blob/master/README.md"
  url "https://github.com/antigenomics/vdjdb-standalone/releases/download/1.1.2/vdjdb-1.1.2.zip"
  version "1.1.2"
  sha256 "40891255e5755e2b7b12baab9030a0f9eadf5a572afce546716361794479cf8e"

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
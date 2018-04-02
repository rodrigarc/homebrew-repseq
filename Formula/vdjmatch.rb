class Vdjmatch < Formula
  desc "VDJmatch: a software for functional annotation of T-cell repertoires"
  homepage "https://github.com/antigenomics/vdjmatch/blob/master/README.md"
  url "https://github.com/antigenomics/vdjmatch/releases/download/1.2.0/vdjdb-1.2.0.zip"
  version "1.2.0"
  sha256 "272e1792f9ac7c4f258bb29c9b0d1c04bda9b1de47b596e7de7821ca7a18e552"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../vdjmatch"
    system "#{bin}/vdjmatch", "Update"
  end

  test do
    system "vdjmatch"
  end
end
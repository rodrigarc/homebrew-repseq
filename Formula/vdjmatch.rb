class Vdjmatch < Formula
  desc "VDJmatch: a software for functional annotation of T-cell repertoires"
  homepage "https://github.com/antigenomics/vdjmatch/blob/master/README.md"
  url "https://github.com/antigenomics/vdjmatch/releases/download/1.3.1/vdjmatch-1.3.1.zip"
  version "1.3.1"
  sha256 "f8e61852d1d6ca499d04667b8e9cd2bdf59b71fa0fa5844c1016e45d30acd71f"

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
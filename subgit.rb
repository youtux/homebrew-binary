class Subgit < Formula
  desc "SVN to Git migration tool"
  homepage "http://subgit.com"
  url "http://old.subgit.com/download/subgit-3.2.0.zip"
  sha256 "1df8f20e6d4005fd19a82d2bd9fa9ade2383214c0ddebd9136d7166b89fdc973"

  bottle :unneeded

  def install
    inreplace "bin/subgit", 'TS_LIB="$BASEDIR"/lib', 'TS_LIB="$BASEDIR"/libexec'
    bin.install "bin/subgit"
    libexec.install Dir["lib/*"]
  end

  def caveats; <<-EOS
    To use SubGit, you must agree to the SubGit licensing agreement:
      http://subgit.com/license.html
    EOS
  end
end

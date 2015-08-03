class Subgit < Formula
  desc "SVN to Git migration tool"
  homepage "http://subgit.com"
  url "http://old.subgit.com/download/subgit-3.0.0.zip"
  sha256 "60e8859f57008262fc9af4e9913b85782797237ccbefd5d87a09f8f113b73d23"

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

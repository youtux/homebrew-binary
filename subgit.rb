class Subgit < Formula
  desc "SVN to Git migration tool"
  homepage "http://subgit.com"
  url "http://old.subgit.com/download/subgit-2.0.3.zip"
  sha1 "b40c8d6ee67ff029966a8a71338f04699e154023"

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

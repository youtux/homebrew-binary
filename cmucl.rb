class Cmucl < Formula
  desc "high-performance, free Common Lisp implementation"
  homepage "http://www.cons.org/cmucl"
  url "http://common-lisp.net/project/cmucl/downloads/release/20f/cmucl-20f-x86-darwin.tar.bz2"
  sha256 "b0cff8699dea9889a7db2599a996ed08004274bd2fb6919241b4e532dd047b1d"

  skip_clean "bin"

  bottle :unneeded

  def install
    bin.install "bin/lisp"
    lib.install "lib/cmucl"

    doc.install Dir["doc/cmucl/*"]
    man1.install Dir["man/man1/*"]
  end
end

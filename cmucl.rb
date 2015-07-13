class Cmucl < Formula
  desc "high-performance, free Common Lisp implementation"
  homepage 'http://www.cons.org/cmucl'
  url 'http://common-lisp.net/project/cmucl/downloads/release/20f/cmucl-20f-x86-darwin.tar.bz2'
  sha1 '40315a15ad996d64ef043080a7afd634959d3f40'

  skip_clean 'bin'

  def install
    bin.install 'bin/lisp'
    lib.install 'lib/cmucl'

    doc.install Dir['doc/cmucl/*']
    man1.install Dir['man/man1/*']
  end
end

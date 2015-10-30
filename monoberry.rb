class Monoberry < Formula
  desc "Mono for the Blackberry 10 platform"
  homepage "http://burningsoda.com/software/monoberry/"
  url "https://github.com/roblillack/monoberry/releases/download/0.2.0/monoberry-0.2.0.tgz"
  sha256 "1a69fe283bc5b658afacbc4133d1f40152c394230eec207759aaaf6af398150d"

  bottle :unneeded

  def install
    (share/"monoberry").install "target/lib", "target/target", "target/tool"
    (bin/"monoberry").write <<-EOS.undent
      #!/bin/sh
      mono #{share}/monoberry/tool/monoberry.exe "$@"
    EOS
  end
end

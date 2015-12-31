class Rar < Formula
  desc "archive manager for RAR/ZIP file formats"
  homepage "http://www.rarlab.com"
  url "http://www.rarlab.com/rar/rarosx-5.3.0.tar.gz"
  sha256 "1a2a4fc7a146a9847386d6e0165bf7bfc540a3d559b15c74d3be42d37c6409cf"

  bottle :unneeded

  resource "man" do
    url "http://manpages.ubuntu.com/manpages.gz/trusty/man1/rar.1.gz"
    sha256 "9a2dd38c3ec1e098f29b720116ad77a71e700dccebaa936cb7ace397702b287a"
  end

  def install
    bin.install "rar", "unrar"
    lib.install "default.sfx"
    etc.install "rarfiles.lst"
    doc.install "acknow.txt", "order.htm", "rar.txt", "whatsnew.txt"
    man1.install resource("man")
  end
end

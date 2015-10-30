class Rar < Formula
  desc "archive manager for RAR/ZIP file formats"
  homepage "http://www.rarlab.com"
  url "http://www.rarlab.com/rar/rarosx-5.2.1.tar.gz"
  sha256 "78f023dc1ba1d95f5c2fb5b90c16f214c8bfd2973bf79d92b8a523d711a57065"

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

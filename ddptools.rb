require 'formula'

class Ddptools < Formula
  homepage 'http://ddp.andreasruge.de'
  url 'http://ddp.andreasruge.de/dist/ddptools-0.8.8-osx.tar.gz'
  sha1 '1114f57814f42b88686f2ffb147989906e472524'

  def install
    bin.install 'ddpinfo', 'cue2ddp', 'cdtinfo'
    man1.install 'doc/ddpinfo.1', 'doc/cue2ddp.1', 'doc/cdtinfo.1'
  end

  test do
    system "#{bin}/ddpinfo", "--version"
    system "#{bin}/cue2ddp", "--version"
    system "#{bin}/cdtinfo", "--version"
  end

end

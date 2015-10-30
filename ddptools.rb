class Ddptools < Formula
  desc "command-line programs to read & write DDP images"
  homepage "http://ddp.andreasruge.de"
  url "http://ddp.andreasruge.de/dist/ddptools-0.8.8-osx.tar.gz"
  sha256 "f7be035f59013720ebe975eddfaea600e1970f7d6b04f22733fb46facc065863"

  bottle :unneeded

  def install
    bin.install "ddpinfo", "cue2ddp", "cdtinfo"
    man1.install "doc/ddpinfo.1", "doc/cue2ddp.1", "doc/cdtinfo.1"
  end

  test do
    system "#{bin}/ddpinfo", "--version"
    system "#{bin}/cue2ddp", "--version"
    system "#{bin}/cdtinfo", "--version"
  end
end

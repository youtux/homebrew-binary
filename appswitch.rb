class Appswitch < Formula
  desc "command-line interface to OS X process management"
  homepage "http://web.sabi.net/nriley/software/"
  url "http://web.sabi.net/nriley/software/appswitch-1.1.2.tar.gz"
  sha256 "f4a9ffd2106d94ea2cb37f6714f850049902a029b141f2a2e3c6b5d2bfa9a8bb"

  bottle :unneeded

  def install
    # Because the tarball always comes with a precompiled binary and because
    # compiling this now would require using xcodebuild from a full XCode
    # install, let"s just use the binary so that we can support CLT only.
    man1.install gzip("appswitch.1")
    bin.install "appswitch"
  end

  test do
    system "#{bin}/appswitch", "-P"
  end
end

class Appswitch < Formula
  desc "command-line interface to OS X process management"
  homepage "http://web.sabi.net/nriley/software/"
  url "http://web.sabi.net/nriley/software/appswitch-1.1.1.tar.gz"
  sha256 "0e660b389bf0ad3aa5dcff2a5ca81a2f6b493abbddeb994f682f06c7e3663c0b"

  bottle :unneeded

  def install
    # Because the tarball always comes with a precompiled binary and because
    # compiling this now would require using xcodebuild from a full XCode
    # install, let"s just use the binary so that we can support CLT only.
    man1.install gzip("appswitch.1")
    bin.install "appswitch"
  end
end

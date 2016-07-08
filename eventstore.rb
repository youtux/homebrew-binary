class Eventstore < Formula
  desc "functional database with complex event processing"
  homepage "http://geteventstore.com"
  url "http://download.geteventstore.com/binaries/EventStore-OSS-MacOSX-v3.7.0.tar.gz"
  sha256 "e5902899d45aca6414fae01fff152ddc2df1495ad29d36ea3bcffbe33025e396"

  bottle :unneeded

  depends_on :macos => :mavericks

  def install
    prefix.install Dir["*"]

    (bin/"eventstore").write <<-EOS.undent
      #!/bin/sh
      cd "#{prefix}"
      exec "#{prefix}/run-node.sh" "$@"
    EOS

    (bin/"eventstore-testclient").write <<-EOS.undent
      #!/bin/sh
      exec "#{prefix}/testclient" "$@"
    EOS
  end

  test do
    assert_match  /#{version}/, shell_output("#{bin}/eventstore --version")
  end
end

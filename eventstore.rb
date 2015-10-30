class Eventstore < Formula
  desc "functional database with complex event processing"
  homepage "http://geteventstore.com"
  url "http://download.geteventstore.com/binaries/EventStore-OSS-Mac-v3.0.4.tar.gz"
  sha256 "7ac526464ef1423b93519cd0d5d61985b880e4412d93c07bbedb42f121a8900a"

  bottle :unneeded

  depends_on :macos => :mavericks

  def install
    prefix.install Dir["*"]

    (bin/"eventstore").write <<-EOS.undent
      #!/bin/sh
      cd "#{prefix}"
      exec "#{prefix}/clusternode" "$@"
    EOS

    (bin/"eventstore-testclient").write <<-EOS.undent
      #!/bin/sh
      exec "#{prefix}/testclient" "$@"
    EOS
  end

  test do
    system "#{bin}/eventstore", "--version"
    system "#{bin}/eventstore --mem-db & sleep 3; pid=$!; #{bin}/eventstore-testclient --command wrfl; #{bin}/eventstore-testclient --command rdfl; kill $pid"
  end
end

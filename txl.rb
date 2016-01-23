class Txl < Formula
  desc "Expierimental rule-based structural programming language"
  homepage "http://txl.ca/"

  version "10.6d"

  if MacOS.prefer_64_bit?
    url "http://txl.ca/ndownload/26466-txl10.6d.macosx64.tar.gz"
    sha256 "54b20b7e5d07f5833a5e48f6130ea15b63a77bed0fc458959573bf2e093e94ed"
  else
    url "http://txl.ca/ndownload/9343-txl10.6d.macosx32.tar.gz"
    sha256 "6018e2c7210c8fc619354a346224086aa5eef3c1bddfa5fd6726659aa6ef84be"
  end

  def caveats; <<-EOS.undent
    We agreed to the TXL terms and conditions for you.
    If this is unacceptable you should uninstall.
    EOS
  end

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/bin/*"]
    man1.install Dir["#{libexec}/man/man1/*.1"]
  end

  test do
    assert_equal "TXL v10.6d (27.8.15) (c) 1988-2015 Queen's University at Kingston\n", shell_output("#{bin}/txl 2>&1 | grep #{version}")
  end
end

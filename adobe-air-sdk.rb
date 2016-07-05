# Find downloads at: https://helpx.adobe.com/air/kb/archived-air-sdk-version.html
class AdobeAirSdk < Formula
  desc "SDK for Adobe Air"
  homepage "https://www.adobe.com/devnet/air/air-sdk-download.html"
  url "http://airdownload.adobe.com/air/mac/download/22.0/AIRSDK_Compiler.tbz2"
  version "22.0.0.153"
  sha256 "c6a851909dfaab7ee33cc03c98499363a7e59a6d9e4596f86d93b2bb7a895bc1"

  conflicts_with "adobe-air-sdk-flex"

  bottle :unneeded

  def install
    rm_f Dir["bin/*.bat"]
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/bin/*"]
  end

  def caveats; <<-EOS.undent
    To set AIR_HOME:
      export AIR_HOME=#{libexec}
    EOS
  end

  test do
    assert_equal "#{version}\n", shell_output("#{bin}/adt -version")
  end
end

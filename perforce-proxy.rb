class PerforceProxy < Formula
  desc "Proxy for Perforce applications"
  homepage "http://www.perforce.com/"
  version "2015.1.1028542"

  if MacOS.prefer_64_bit?
    url "http://filehost.perforce.com/perforce/r15.1/bin.darwin90x86_64/p4p"
    sha256 "123d067257f38b09b5682c8508e37d3a60d297ce94321dc1dcce7812b5ab669d"
  else
    url "http://filehost.perforce.com/perforce/r15.1/bin.darwin90x86/p4p"
    sha256 "51205bf91189b6cd580426c4b2c99c1d723b0737de43abfd118de9e158663b77"
  end

  def install
    bin.install "p4p"
    (var+"p4p").mkpath
  end

  def caveats; <<-EOS.undent
    To use the Perforce proxy to access your Perforce server, set your P4PORT
    environment variable to "localhost:1666".

    Before starting the proxy server, you probably need to edit the plist to use
    the correct host and port for your Perforce server (replacing the default
    perforce:1666).
    EOS
  end

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{opt_bin}/p4p</string>
        <string>-p</string>
        <string>1666</string>
        <string>-r</string>
        <string>#{var}/p4p</string>
        <string>-t</string>
        <string>perforce:1666</string>
      </array>
      <key>RunAtLoad</key>
      <true/>
      <key>KeepAlive</key>
      <true/>
      <key>WorkingDirectory</key>
      <string>#{var}/p4p</string>
    </dict>
    </plist>
    EOS
  end
end

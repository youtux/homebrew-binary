class Ngrok2 < Formula
  desc "Secure tunnels to localhost"
  homepage "https://ngrok.com/"
  version "2.0.19"

  if MacOS.prefer_64_bit?
    url "https://dl.ngrok.com/ngrok_#{version}_darwin_amd64.zip"
    sha256 "ec307920b86778db4c632434cb9fff01ead9edd7438618aab87f5e891791f799"
  else
    url "https://dl.ngrok.com/ngrok_#{version}_darwin_386.zip"
    sha256 "46bb6437708df9343c1abb3669119870c7878acde2a363bb0f1544a8ddef1f99"
  end

  bottle :unneeded

  def install
    bin.install "ngrok"
  end

  test do
    system "#{bin}/ngrok"
  end
end

class Ngrok2 < Formula
  desc "Secure tunnels to localhost"
  homepage "https://ngrok.com/"
  version "2.1.2"

  if MacOS.prefer_64_bit?
    url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-#{version}-darwin-amd64.zip"
    sha256 "72ae93f8d4afc607122d00cfcbacaa8daeab93731ac2c4931c2227338269bc7b"
  else
    url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-#{version}-darwin-386.zip"
    sha256 "08e986055bb37f60c80a6dcd9b51ffa1a09ddebfd20d0bfcfb0f8c4c09fbeb39"
  end

  bottle :unneeded

  def install
    bin.install "ngrok"
  end

  test do
    assert_equal "ngrok version #{version}\n", shell_output("#{bin}/ngrok -version")
  end
end

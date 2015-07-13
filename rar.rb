class Rar < Formula
  desc "archive manager for RAR/ZIP file formats"
  homepage 'http://www.rarlab.com'
  url 'http://www.rarlab.com/rar/rarosx-5.2.1.tar.gz'
  sha1 'ca5db7eb2797b47aff7f6e2d583aed4cddf235c8'

  resource 'man' do
    url 'http://manpages.ubuntu.com/manpages.gz/trusty/man1/rar.1.gz'
    sha1 'f3feaef47d7dfa5a3a8372153c743921ed3eda51'
  end

  def install
    bin.install 'rar', 'unrar'
    lib.install 'default.sfx'
    etc.install 'rarfiles.lst'
    doc.install 'acknow.txt', 'license.txt', 'order.htm', 'rar.txt', 'readme.txt', 'whatsnew.txt'
    man1.install resource('man')
  end
end

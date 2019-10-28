# Note:
#   To install git-head of mew:
#   brew install --ignore-dependencies --HEAD mew
# If you omit --ignore-dependencies, brew will try to install Emacs head as well.
require 'formula'

#class Mew < Formula
#  url 'http://www.mew.org/Release/mew-6.8.tar.gz'
#  homepage 'http://www.mew.org'
#  md5 '5aa0071696fd234f8853110b348c0357'
#
#  depends_on 'emacs'
#  head 'git://github.com/kazu-yamamoto/Mew.git'
#
#  def install
#    system "./configure", "--prefix=#{prefix}"
#    system "make install"
#    system "make install-info"
#    system "make install-jinfo"
#  end
#
#  def test
#    # this will fail we won't accept that, make it test the program works!
#    system "/usr/bin/false"
#  end
#end


class Mew < Formula
  desc "a mail reader for Emacs"
  homepage "http://www.mew.org/"
  url "http://www.mew.org/Release/mew-6.8.tar.gz"
  version "6.8"
  sha256 "cf44c4f9ca704ba1edce7134bc7f38a17361391d5be1090221431a3a06f6bf47"

  def install
    system "./configure", "--prefix=#{prefix}", "--with-emacs=/usr/bin/emacs"
    system "make", "install" # if this fails, try separate make/make install steps
    system "make", "install-info"
    system "make", "install-jinfo"
  end

  test do
    system "true"
  end
end

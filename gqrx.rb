require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
# from: https://github.com/xlfe/homebrew-gnuradio

class Gqrx < Formula
  homepage 'https://github.com/csete/gqrx'
  head 'https://github.com/csete/gqrx.git'

  depends_on 'cmake' => :build
  depends_on 'qt'
  depends_on 'boost'
  depends_on 'gnuradio'
  depends_on 'gr-osmosdr'

  def install
    system "qmake"
    system "make"
    bin.install 'gqrx.app/Contents/MacOS/gqrx'
  end
end

require 'formula'

class Pngquant < Formula
  url 'https://github.com/pornel/improved-pngquant/tarball/1.7.2'
  head 'https://github.com/pornel/improved-pngquant.git', :branch => 'master'
  homepage 'http://pngquant.org'
  md5 '7a74dd8dbd61d2bb2bc1789b8f55d4f9'
  version '1.7.2'

  depends_on 'pkg-config' => :build
  depends_on :libpng

  def install
  	ENV.remove_from_cflags /-march=\S*/
    system "make"
    bin.install('pngquant')
  end
end
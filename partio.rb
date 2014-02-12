require 'formula'

class Partio < Formula
  homepage 'http://www.partio.us'
  head 'https://github.com/wdas/partio.git'

  depends_on 'cmake' => :build
  depends_on 'swig' => :build
  depends_on 'doxygen' => :build


  def install
    mkdir 'build' do
      system "cmake", "..", *std_cmake_args
      system "make"
      system "make doc"
      system "make install"
    end
  end
end

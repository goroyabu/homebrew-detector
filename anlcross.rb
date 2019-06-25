class Anlcross < Formula
  desc "Analysis Framework"
  homepage "https://github.com/goroyabu/anlcross"
  url "https://github.com/goroyabu/anlcross/archive/1.1.0.tar.gz"
  depends_on "gcc" => :build
  depends_on "make" => :build
  depends_on "readline" => :build
  depends_on "com_cli" => :build

  def install
    system "make", "install", "CXX=g++-9", "--include-dir=#{HOMEBREW_PREFIX}/include"
    lib.install "lib/libANLCross.so"
    include.install "source/evs/evs.hpp"
    include.install "source/bnk/bnk.hpp"
    include.install "source/anl/ANLStatus.hpp"
    include.install "source/anl/ANLModuleBase.hpp"
    include.install "source/anl/ANLCross.hpp"
  end

  def caveats;
    msg = <<~EOS
    You should add the following commands
    to your shell initialization script (.bashrc/.profile/etc.)
    
    export CPATH=/usr/local/include
    export LD_LIBRARY_PATH=/usr/local/lib
    export LIBRARY_PATH=/usr/local/lib
  EOS
  end    

  test do
    system "false"
  end
end

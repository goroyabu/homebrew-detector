class ComCli < Formula
  desc "C++ Functions for Command-Line Interface"
  homepage "https://github.com/goroyabu/com_cli"
  url "https://github.com/goroyabu/com_cli/archive/1.1.4.tar.gz"
  depends_on "gcc" => :build
  depends_on "make" => :build
  depends_on "readline" => :build

  def install
    system "make", "install", "CXX=g++-9"
    lib.install "lib/libCOMCLI.so"
    include.install "source/com_cli.hpp"
    include.install "source/com.h"
    include.install "source/cli.h"
    include.install "source/cmdline.hpp"
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

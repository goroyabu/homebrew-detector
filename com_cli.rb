class ComCli < Formula
  desc "C++ Functions for Command-Line Interface"
  homepage "https://github.com/goroyabu/com_cli"
  url "https://github.com/goroyabu/com_cli/archive/1.1.4.tar.gz"
  depends_on "gcc" => :build
  depends_on "make" => :build
  depends_on "readline" => :build

  def install
    system "echo", "install..."
    system "make", "install", "CXX=g++-9"
    bin.install "lib/libCOMCLI.so"
  end

  def caveats;
    msg = <<-EOF.undent
    you should
    add the following commands to your shell initialization
    script (.bashrc/.profile/etc.)
  EOF
  end    

  test do
    system "false"
  end
end

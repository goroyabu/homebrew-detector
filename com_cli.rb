class ComCli < Formula
  desc "C++Library of CLI"
  homepage "https://github.com/goroyabu/com_cli"
  url "https://github.com/goroyabu/com_cli"
  version "1.1.2"
  sha256 "ff2e4a566744c16d51616d94ac6546a54e4d5a4430516197de468bb3652748da"
  depends_on "make" => :build

  def install
    system "echo", "install..."
    system "make", "install"
  end

  test do
    system "false"
  end
end

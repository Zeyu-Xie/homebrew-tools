class Timothy2048 < Formula
  desc "Terminal-based 2048 game written in C++"
  homepage "https://github.com/Zeyu-Xie/Timothy-2048"
  url "https://github.com/Zeyu-Xie/Timothy-2048/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "400edfb97df13c808d01353370a563acfd012566f4638f58be3970fa5fdd75a0"
  license "GPL-3.0-only"

  def install
    system "make"
    bin.install "build/main" => "timothy-2048"
  end

  test do
    output = shell_output("#{bin}/timothy-2048 --version")
    assert_match "Timothy 2048 version 1.0.1", output
  end
end

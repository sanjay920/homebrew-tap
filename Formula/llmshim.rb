class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.27.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.27.1/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "dfc848ae2bccdd8f55e96e47b8613ae73205b3900d07eddc8c4ab7974a36f33b"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.27.1/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "6f97310a3d399383bc8fa6c5bea6cd831aabf55e5be047e25a5b31e1b695df1a"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end

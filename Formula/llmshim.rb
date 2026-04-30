class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.1.21"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.21/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "8d1de3464f902cf294ea1b3cf70f738f8316769b8586dc78e8722d4505cbd817"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.21/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "08188e760159b3a3210fd6e831c064585d726835d91deb404c8cf7f8be9002ec"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end

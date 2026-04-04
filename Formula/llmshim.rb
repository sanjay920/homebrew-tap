class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.1.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.17/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "a0566a6f49aad453c009017fec2c1b4301d41376afc8087ccbf49c5b5c17ad11"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.17/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "f5bc2ac46475cca615493b1302138ba29accf82ae428503b52b298f77f0ed36c"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end

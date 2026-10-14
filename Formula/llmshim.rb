class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.27.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.27.2/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "48a1d93f79528dda069a21f566a70151a05d339a27be367bb1d769b14973cdb0"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.27.2/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "c198e349671dbe47e28f01ff1147de60357edcafc79dab0e454157e2fd2ed6f9"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end

class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.1.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.13/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "3b3120b1f6421cb1111c4614612a64cb9e2dfa4502b9753d3b5db0dfdaab02de"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.1.13/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "a6c9cb206ae68f3f46aadfa0e1b1fda10c177d706c146122b09a50ca22362de8"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end

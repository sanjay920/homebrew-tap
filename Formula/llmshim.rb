class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.26.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.26.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "08e883a0b959c31e8e93458f9b8bc2e67c72a77d1d89c8570b7269483141dac3"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.26.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "9c10dfb28477e9836b6408d9dac1c1f76e1eaba38bf624f2f18716706ff8b531"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end

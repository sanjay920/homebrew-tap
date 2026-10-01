class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.20.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.20.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "7021b1af713db9e34a170ea48306087fc1e130afa89ec2cb5778b231d2ec493a"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.20.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "f9ecff93f41e33da4b4b0b996b26fecd4ba06a065d1d2992630c7642320673a3"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end

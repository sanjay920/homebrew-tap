class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.4.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "734e493eb1503df88661295e2c666c3bed6a51c9c8c2481285eaee6ca35db6eb"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.4.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "cb47995c5dd2a675207376e43e59bf0cfe9bbc2e510184079cee0169aac17606"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end

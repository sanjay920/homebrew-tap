class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.3.1/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "c52fdf4d0297d0144578ccb8c31ae713abadc916ebc392580d7af64af8d0ea98"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.3.1/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "2bc79a2bda840878f225d60e0795f0ebd77cc300647ab71ac185f83912c6bd57"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end

class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.3.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.3.5/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "b70bff7a0c6f1bcb1cb4ceafa10b9760fb6cf311957802b6589a014b75200680"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.3.5/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "595714e43191a4f67473c67d9ce062d9672c411b67617b886b8820032b674411"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end

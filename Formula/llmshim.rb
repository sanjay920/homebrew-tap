class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.10.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.10.1/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "6c9e7b29f322037888ca5ce703f322918231f7a24b2ee7d612234081d9d19305"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.10.1/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "303699e5bb99eefe355bf613c6e869da2509b30e9bee9b6c2c68b1617007e460"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end

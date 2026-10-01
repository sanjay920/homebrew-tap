class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.21.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.21.1/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "8303b2b137c69fa71e9d45dab25ee1c5e90637b5dac84e0bc13d578d997f2b6a"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.21.1/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "4fe7e35bb88bbea9446ee83a05ec559b01787a4df33589d1ddb03331f7119fc4"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end

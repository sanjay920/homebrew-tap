class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.23.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.23.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "bf51b41269b2c692d6a2888c7fe7225b9607de15ec30d087c915ca13bbc7899d"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.23.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "a163c6bc3c796505b13ff30da768990485c12d569a9700c19a1c51b248744e7e"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end

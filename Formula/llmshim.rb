class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.2.2/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "f0bf26787599c8639927d3dd1c0a14188f4b32e95aba59743b9fb0c96dc63b81"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.2.2/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "b20899de0605addcbdad553135e5d2a98d3893b06e5de3b01ea7bef3408725e6"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end

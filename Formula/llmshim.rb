class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.8.0/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "acede3742234d25862d27c2ddaf46c30654b3b9cb6cd432acb58f52526474d2f"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.8.0/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "27f8becd6e523d298eab268fa476f18b6b6cfd4c241948c0fd34c37ce3640cd3"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end

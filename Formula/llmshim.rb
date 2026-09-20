class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.7.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.7.2/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "adfb4040be456f641c66d4941e041a9ec054537cacca291ee7d22c2aed8f1916"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.7.2/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "da01770f13e1dda2b937813644fc9063533ec616b742059441b6be3d811153c0"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end

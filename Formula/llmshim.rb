class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.7.1/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "834075460ebbd1c1cff8574fb928f403014c83c9446371a58fc9375b69496b3e"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.7.1/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "869a851626ea78f68a799521d1061614762bba75f97f1b6b8996246f1a801a00"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end

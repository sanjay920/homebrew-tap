class Llmshim < Formula
  desc "Blazing fast LLM API translation layer — one interface, every provider"
  homepage "https://github.com/sanjay920/llmshim"
  license "MIT"
  version "0.3.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sanjay920/llmshim/releases/download/v0.3.7/llmshim-aarch64-apple-darwin.tar.gz"
      sha256 "172e529b19252070654bc22c0706cc30ec4067781f0dc6769c9485a210abc583"
    else
      url "https://github.com/sanjay920/llmshim/releases/download/v0.3.7/llmshim-x86_64-apple-darwin.tar.gz"
      sha256 "b45dbe5493f186eb8140adc5935f7a3658cf0e088adbcc558c835c67be1b782d"
    end
  end

  def install
    bin.install "llmshim"
  end

  test do
    assert_predicate bin/"llmshim", :executable?
  end
end

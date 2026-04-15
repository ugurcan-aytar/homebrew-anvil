class Anvil < Formula
  desc "LLM-maintained wiki compiler"
  homepage "https://github.com/ugurcan-aytar/anvil"
  license "MIT"
  version "0.2.6"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ugurcan-aytar/anvil/releases/download/v0.2.6/anvil_0.2.6_darwin_arm64.tar.gz"
    sha256 "b498416dc6a18132d0f4794674a6404db486661777053d1a61e0fa8d93800fb6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ugurcan-aytar/anvil/releases/download/v0.2.6/anvil_0.2.6_linux_amd64.tar.gz"
    sha256 "c2c17c546f6cac370838ae109c91f02b22969639bc67cf0bd1d184a19abb15d8"
  end

  def install
    bin.install "anvil_0.2.6_#{OS.mac? ? "darwin_arm64" : "linux_amd64"}/anvil"
  end

  test do
    system "#{bin}/anvil", "version"
  end
end

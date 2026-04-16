class Anvil < Formula
  desc "LLM-maintained wiki compiler"
  homepage "https://github.com/ugurcan-aytar/anvil"
  license "MIT"
  version "0.2.7"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ugurcan-aytar/anvil/releases/download/v0.2.7/anvil_0.2.7_darwin_arm64.tar.gz"
    sha256 "2e5f0186d6f3fb9fe4c1c2c0dc47b5bb318793d4396a41ef2e5920ea46dff583"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ugurcan-aytar/anvil/releases/download/v0.2.7/anvil_0.2.7_linux_amd64.tar.gz"
    sha256 "d8102487d1f9eee75dbb873756eee0f066956b7209f1516bea10511854997d1f"
  end

  def install
    bin.install "anvil_0.2.7_#{OS.mac? ? "darwin_arm64" : "linux_amd64"}/anvil"
  end

  test do
    system "#{bin}/anvil", "version"
  end
end

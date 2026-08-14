class Zbr < Formula
  desc "ZBR CLI, A simple and powerful Discord bot scripting engine."
  homepage "https://zbrlang.tech"
  version "1.8.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zbrlang/zbr/releases/latest/download/zbr-darwin-x64"
    sha256 "18573fce9dc364bfa9798607830bf8e1a63e43dc96513bf050471b3ec1037463"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zbrlang/zbr/releases/latest/download/zbr-darwin-arm64"
    sha256 "774ac9ab542c695cb039a5fbffab28d76d16b3aa0217c0dee51f25d13732a0ae"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zbrlang/zbr/releases/latest/download/zbr-linux-x64"
    sha256 "eec463889d0161c14857ec23d36ebe01e0ab86d418baebad242bfc25ba8b65dd"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zbrlang/zbr/releases/latest/download/zbr-linux-arm64"
    sha256 "30aa04d86450e500a805766283ddba86a6146c18adf00584e54bfd8722ef95c0"
  end

  def install
    if OS.mac? && Hardware::CPU.intel?
      bin.install "zbr-darwin-x64"
      mv bin/"zbr-darwin-x64", bin/"zbr"
    elsif OS.mac? && Hardware::CPU.arm?
      bin.install "zbr-darwin-arm64"
      mv bin/"zbr-darwin-arm64", bin/"zbr"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "zbr-linux-x64"
      mv bin/"zbr-linux-x64", bin/"zbr"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "zbr-linux-arm64"
      mv bin/"zbr-linux-arm64", bin/"zbr"
    end
  end

  test do
    system "#{bin}/zbr", "--version"
  end
end

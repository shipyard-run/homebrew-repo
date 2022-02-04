# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.40"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.40/shipyard_0.3.40_darwin_x86_64.zip"
    sha256 "0f71d45b21442d189df1b2d3d003df86bfcc87b3a920e8f39ff464776ee5b8c0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.40/shipyard_0.3.40_darwin_arm64.zip"
    sha256 "5b6a398065ad8a53b4fc558231922a7f81cfac1e222d33ff3824cfdfac8d70a2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.40/shipyard_0.3.40_linux_x86_64.tar.gz"
    sha256 "98bf2a0ba17508335a784140fcca7d41e9920f1cad1fe278bee2ae23463e6ef3"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.40/shipyard_0.3.40_linux_armv7.tar.gz"
    sha256 "2030796459f9eda367c37695f6a2a42997ca7a775425b17fa66a21dea4f2341d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.40/shipyard_0.3.40_linux_arm64.tar.gz"
    sha256 "709fde82f3db8701e48709069c656e5b662dacdbfccb23176477c812aebf067a"
  end

  def install
    bin.install "shipyard"
  end
end

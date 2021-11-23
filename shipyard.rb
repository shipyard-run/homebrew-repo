# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.38"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.38/shipyard_0.3.38_darwin_x86_64.zip"
    sha256 "9798674defbae6dcf3d2300e44bbd65b5dfae5c059fbd1c53bd106aa264def26"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.38/shipyard_0.3.38_darwin_arm64.zip"
    sha256 "6753456d30119cc6b57aab22ad78e2328a75e3d6b432df34a9f7265bca0bef65"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.38/shipyard_0.3.38_linux_x86_64.tar.gz"
    sha256 "6228591f1db90c7d6b4dc8a1aa6a308865e936cc36362d67dfdf2f736994ff15"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.38/shipyard_0.3.38_linux_armv7.tar.gz"
    sha256 "15a38cba827f6bf2b148de6f569096077a65e51ede9ec34a4335d2592c8d34ed"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.38/shipyard_0.3.38_linux_arm64.tar.gz"
    sha256 "943acd0568aa9f263d506f77b4bcb7e63a83155ce767559f0af153cec3237813"
  end

  def install
    bin.install "shipyard"
  end
end

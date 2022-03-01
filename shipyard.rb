# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
<<<<<<< HEAD
  version "0.3.44"
=======
  version "0.3.47"
>>>>>>> shipyard-run-main

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.47/shipyard_0.3.47_darwin_x86_64.zip"
    sha256 "18fe37d736f14188c86b6078750b6f1d2dd400117141b7f66afea2c6730d7d14"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.47/shipyard_0.3.47_darwin_arm64.zip"
    sha256 "6bbbe2c60d9b5cb8a1aeb40e9319a3bacac106012bdefc4493a2b6b65b8af827"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.47/shipyard_0.3.47_linux_x86_64.tar.gz"
    sha256 "0b3ad91e12ad96b4a3ff270ea66b18e31b1c66953a66a3524875f80de3e52170"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.47/shipyard_0.3.47_linux_armv7.tar.gz"
    sha256 "890f217de87da192fc84043fba5592769b5d1163efc97ca614b42e4fa8c927a6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.47/shipyard_0.3.47_linux_arm64.tar.gz"
    sha256 "a46911cbcc5647c8297489a8254ba7315b7094a5427bf6d702616939cad1826c"
  end

  def install
    bin.install "shipyard"
  end
end

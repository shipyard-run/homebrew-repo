# typed: false
# frozen_string_literal: true

class Shipyard < Formula
  desc ""
  homepage "https://shipyard.run/"
  version "0.3.45"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.45/shipyard_0.3.45_darwin_x86_64.zip"
    sha256 "d6f9891a20b8516d367b3193e2e9b6c4cae603c264218a4c481461f698c91e08"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.45/shipyard_0.3.45_darwin_arm64.zip"
    sha256 "68887533776e86c0a5d701ba0511d93c74b8e3541069f07acddfa1236ef5638a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.45/shipyard_0.3.45_linux_x86_64.tar.gz"
    sha256 "cb0e0089487690d05d5db126d9ea5a2ab8acf3ea78b70fe988773dcc4a6ab44f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.45/shipyard_0.3.45_linux_armv7.tar.gz"
    sha256 "16bb03370643b3fe2091b072779c0fd6d4dd03715427f67245870cea488d8749"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/shipyard-run/shipyard/releases/download/v0.3.45/shipyard_0.3.45_linux_arm64.tar.gz"
    sha256 "62cc6165395e33c600256c720c60342e83b5c847a3e7f4835c1e56e827e81e38"
  end

  def install
    bin.install "shipyard"
  end
end

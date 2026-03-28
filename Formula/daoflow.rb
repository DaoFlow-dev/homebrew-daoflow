# typed: false
# frozen_string_literal: true

class Daoflow < Formula
  desc "Self-hosted deployment platform — Docker Compose made production-ready"
  homepage "https://daoflow.dev"
  version "0.6.0"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/DaoFlow-dev/DaoFlow/releases/download/v#{version}/daoflow-darwin-arm64.tar.gz"
      sha256 "1b2186eceb93938fcf6fe5101b9a9688e33320b22ad6be19b19dca5aa1bf096e"

      def install
        bin.install "daoflow-darwin-arm64" => "daoflow"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/DaoFlow-dev/DaoFlow/releases/download/v#{version}/daoflow-darwin-x64.tar.gz"
      sha256 "1ee0327f33f9e0c1619716b578ff885a0aec95ea066f74c00b0c1438d4cd4f74"

      def install
        bin.install "daoflow-darwin-x64" => "daoflow"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/DaoFlow-dev/DaoFlow/releases/download/v#{version}/daoflow-linux-arm64.tar.gz"
      sha256 "214a150baf6148fa3b0d0c21c52921b09599da1e7c8dbdd0bb9cabcee46fc5f2"

      def install
        bin.install "daoflow-linux-arm64" => "daoflow"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/DaoFlow-dev/DaoFlow/releases/download/v#{version}/daoflow-linux-x64.tar.gz"
      sha256 "de1ef75b4446deb668e79cb007c4225b33867b95c51e0619358954143c902fcb"

      def install
        bin.install "daoflow-linux-x64" => "daoflow"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/daoflow --cli-version")
  end
end

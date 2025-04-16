class Zcocoframe < Formula
    desc "CLI tool to generate xcframeworks easily"
    homepage "https://github.com/hariTH-0828/zcocoframe"
    url "https://github.com/hariTH-0828/zcocoframe/archive/refs/tags/V1.0.1.tar.gz"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    license "MIT"
  
    def install
      # First, make the script executable
      chmod 0755, "zcocoframe.sh"
      # Then install it
      bin.install "zcocoframe.sh" => "zcocoframe"
    end
    
    test do
      system "#{bin}/zcocoframe", "--version"
    end
end
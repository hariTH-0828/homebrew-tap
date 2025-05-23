class Zcocoframe < Formula
    desc "CLI tool to generate xcframeworks easily"
    homepage "https://github.com/hariTH-0828/zcocoframe"
    url "https://github.com/hariTH-0828/zcocoframe/archive/refs/tags/V1.0.1.tar.gz"
    sha256 "aea30ae4459e5c4125c2bcf903d7c6f89682c1d548e2c34fbd7661999897906f"
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
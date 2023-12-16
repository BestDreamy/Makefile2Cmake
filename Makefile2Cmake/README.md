use version1's instrution:
	make -f version1
use version2's instrution:
	make -f version2
use version3's instrution:
	make clean -f version3
	make -f version3

use CMakeLists.txt's instruction:
	cd build
	cmake ..
	make

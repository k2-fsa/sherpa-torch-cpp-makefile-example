
sherpa_install_dir := $(shell python3 -c 'import os; import sherpa; print(os.path.dirname(sherpa.__file__))')
sherpa_install_dir := /ceph-fj/fangjun/open-source/sherpa-cpp/build

$(info sherpa_install_dir: $(sherpa_install_dir))

CXX_FLAGS := -I$(sherpa_install_dir)
CXX_FLAGS += -Wl,-rpath,$(sherpa_install_dir)/lib
CXX_FLAGS += -D_GLIBCXX_USE_CXX11_ABI=0

LDFLAGS := -L $(sherpa_install_dir)/lib -lsherpa_offline_recognizer



test_decode_files: test_decode_files.cc
	$(CXX) $(CXX_FLAGS) -o $@ $< $(LDFLAGS)

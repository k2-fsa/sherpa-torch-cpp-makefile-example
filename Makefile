
sherpa_install_dir := $(shell python -c 'import os; import sherpa; print(os.path.dirname(sherpa.__file__))')
sherpa_cxx_flags := $(shell python -c 'import os; import sherpa; print(sherpa.cxx_flags)')

$(info sherpa_install_dir: $(sherpa_install_dir))
$(info sherpa_cxx_flags: $(sherpa_cxx_flags))

CXXFLAGS := -I$(sherpa_install_dir)/include
CXXFLAGS += -Wl,-rpath,$(sherpa_install_dir)/lib
CXXFLAGS += $(sherpa_cxx_flags)

LDFLAGS := -L $(sherpa_install_dir)/lib -lsherpa_offline_recognizer

$(info CXXFLAGS: $(CXXFLAGS))
$(info LDFLAGS: $(LDFLAGS))

test_decode_files: test_decode_files.cc
	$(CXX) $(CXXFLAGS) -o $@ $< $(LDFLAGS)

.PHONY: clean
clean:
	$(RM) test_decode_files

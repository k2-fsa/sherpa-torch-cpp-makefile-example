# Introduction

This repo shows how to use C++ APIs of [sherpa][sherpa].

# Usage

First, please refer to <https://k2-fsa.github.io/sherpa/cpp/installation/index.html>
to install the C++ frontend of [sherpa][sherpa].

```bash
git clone https://github.com/k2-fsa/sherpa-torch-cpp-makefile-example
cd sherpa-torch-cpp-makefile-example
make
```

It will generate a binary `./test_decode_files`.

Please refer to <https://k2-fsa.github.io/sherpa/cpp/offline_asr/gigaspeech.html>
for how to download pre-trained models for testing.

The following is an example:

```bash
sudo apt-get install git-lfs
git lfs install
git clone https://huggingface.co/csukuangfj/icefall-asr-librispeech-pruned-transducer-stateless3-2022-05-13

./test_decode_files \
  ./icefall-asr-librispeech-pruned-transducer-stateless3-2022-05-13/exp/cpu_jit.pt \
  ./icefall-asr-librispeech-pruned-transducer-stateless3-2022-05-13/data/lang_bpe_500/tokens.txt \
  ./icefall-asr-librispeech-pruned-transducer-stateless3-2022-05-13/test_wavs/1089-134686-0001.wav \
  ./icefall-asr-librispeech-pruned-transducer-stateless3-2022-05-13/test_wavs/1221-135766-0001.wav
```

It should print out something like below:

```
Decode multiple files
./icefall-asr-librispeech-pruned-transducer-stateless3-2022-05-13/test_wavs/1089-134686-0001.wav
 AFTER EARLY NIGHTFALL THE YELLOW LAMPS WOULD LIGHT UP HERE AND THERE THE SQUALID QUARTER OF THE BROTHELS

./icefall-asr-librispeech-pruned-transducer-stateless3-2022-05-13/test_wavs/1221-135766-0001.wav
 GOD AS A DIRECT CONSEQUENCE OF THE SIN WHICH MAN THUS PUNISHED HAD GIVEN HER A LOVELY CHILD WHOSE PLACE WAS ON THAT SAME DISHONORED BOSOM TO CONNECT
HER PARENT FOREVER WITH THE RACE AND DESCENT OF MORTALS AND TO BE FINALLY A BLESSED SOUL IN HEAVEN
```

[sherpa]: https://github.com/k2-fsa/sherpa

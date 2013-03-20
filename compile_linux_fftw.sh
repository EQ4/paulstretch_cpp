outfile=paulstretch

rm -f $outfile

ntk-fluid -c GUI.fl 
ntk-fluid -c FreeEditUI.fl

g++ -ggdb GUI.cxx FreeEditUI.cxx *.cpp Input/*.cpp Output/*.cpp `pkg-config ntk --cflags` \
 `pkg-config ntk --libs`  -laudiofile -lfftw3f -lvorbisenc -lvorbisfile -lportaudio -lpthread -lmad -lmxml -o $outfile

rm -f GUI.h GUI.cxx FreeEditUI.h FreeEditUI.cxx


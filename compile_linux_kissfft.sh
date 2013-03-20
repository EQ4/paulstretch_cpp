outfile=paulstretch
rm -f $outfile

ntk-fluid -c GUI.fl 
ntk-fluid -c FreeEditUI.fl


g++ -ggdb -DKISSFFT -I./contrib GUI.cxx FreeEditUI.cxx *.cpp Input/*.cpp Output/*.cpp contrib/*.c `pkg-config ntk --cflags` \
 `pkg-config --libs`  -laudiofile  -lvorbisenc -lvorbisfile -lportaudio -lpthread -lmad -lmxml -o $outfile

rm -f GUI.h GUI.cxx FreeEditUI.h FreeEditUI.cxx

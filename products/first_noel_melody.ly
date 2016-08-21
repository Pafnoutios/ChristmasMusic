\version "2.18.0"

\include "../parts/first_noel.ly"

\include "predefined-guitar-fretboards.ly"

\paper
{
	#(set-paper-size "letter")
}

\score
{
	<<
		\context ChordNames \theChords
		\context FretBoards \theChords
		\context Staff = women
		<<
			\clef treble
			\context Voice = sopranos
			{
				\voiceOne
				<<
					\global
					\Soprano
				>>
			}
		>> %Staff women
		\context Lyrics = englishone {\EnglishOne \EnglishRefrain}
		\context Lyrics = englishtwo \EnglishTwo
		\context Lyrics = englishthree \EnglishThree
		\context Lyrics = englishfour \EnglishFour
	>>
	\layout
	{
	} %layout
	\midi
	{
	
	} %midi
} %score


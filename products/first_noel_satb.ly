\version "2.18.0"

\include "../parts/first_noel.ly"

\paper
{
	#(set-paper-size "letter")
}

\score
{
	\context ChoirStaff
	<<
		\context ChordNames {\theChords}
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
			\context Voice = altos
			{
				\voiceTwo
				<<
					\global
					\Alto
				>>
			}
		>> %Staff women
		\context Lyrics = englishone {\EnglishOne \EnglishRefrain}
		\context Lyrics = englishtwo \EnglishTwo
		\context Lyrics = englishthree \EnglishThree
		\context Lyrics = englishfour \EnglishFour
		\context Staff = men
		<<
			\clef bass
				\context Voice = tenors
				{
					\voiceOne
					<<
						\global
						\Tenor
					>>
				}
			\context Voice = basses
			{
				\voiceTwo
				<<
					\global
					\Bass
				>>
			}
		>> %Staff men
	>> %ChoirStaff
	\layout
	{
	} %layout
	\midi
	{
	
	} %midi
} %score


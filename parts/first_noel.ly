\version "2.18.2"

\header {
	title = "The First Noel"
	%subtitle = ""
	composer = "Traditional English Melody"
	%tagline = ""
	%footer = ""
	%opus = ""
	arranger = "Harmonized by Sir John Stainer"
	%copyright = ""
	%meter = 
}

global = {
	\key d \major
	\time 3/4
	% Lilypond is defaulting to beaming 2 triplets of 8ths,
	% instead of 3 pairs of 8ths.  This behavior is apparently
	% provoked by a default value to beamExceptions.  Clearing
	% that default value allows quarter notes to be the base
	% unit of beaming.
	\set Timing.beamExceptions = #'()
	%\override Score.MetronomeMark #'padding = #4.5
	%\tempo 4=90
}

Soprano = \relative fis'
{
	\partial 4
	fis8(^\mf e) d4.( e8) fis( g) a2
	b8( cis) d4( cis) b a2
	b8( cis) d4( cis) b a( b) cis
	d( a) g fis2
	fis8( e) d4.( e8) fis( g) a2
	b8( cis) d4( cis) b a2
	b8( cis) d4( cis) b a( b)
	cis d( a) g fis2 \bar "||"
	
	fis8(^\ff e) d4.( e8) fis( g) a2
	d8( cis) b2 b4 a2( a4)
	d4 cis b a( b)
	cis4 d( a) g fis2.
}	

Alto = \relative d'
{
	\partial 4
	d4 a2 d4 e2
	e4 a4( a) g fis2
	d8( e) a4( fis) g4 a4( d,)
	g fis( fis) e d2
	cis4 a2 d4 e2
	e4 a4( a) g fis2
	d8( e) a4( fis) g a( g)
	g4 fis2 e4 d2
	
	cis4 a2 d4 cis2
	fis4 b2 b4 fis2( a4)
	fis4 fis g fis2
	g4 fis2 e4 d2.
}

Tenor = \relative a
{
	a8(\mf g) fis2 d'4 cis2
	b4 a( a) b8( cis) d2
	b8( a) a4( a) cis d( b)
	g4 a( d) a a2
	a8( g) fis2 d'4 d( cis)
	b4 a( a) b8( cis) d2
	b8( a) a4( a) cis d( d)
	e4 a,( d) a a2
	
	a8(\ff g) fis2 b4 a2
	a4 b4.( cis8) d( e) fis2( e4)
	d4 d d d2
	g,4 a2 a4 a2.	
}

Bass = \relative d
{
	d4 d2 b4 a( a')
	g4 fis( fis) g d2
	g8( g) fis4( d) e fis( g)
	e4 fis8( g a4) a d,2
	a4 d2 b4 a( a')
	g4 fis( fis) g d2
	g8( g) fis4( d) e fis( g)
	e4 fis8( g a4) a, d2
	
	a4 d2 b4 fis'2
	d4 g4.( a8) b( cis) d2( cis4)
	b4 a g d'( d,)
	e4 fis8( g a4) a, d2.
}

theChords = \chordmode
{
	s4 d2. a d2 g4 d2
	g8 a:7 d2 a4:7 d g a:7 d2 a4 d2
	a4:7 d2. a:7 d2 g4 d2
	g8 a:7 d2 g4 d g a d2 a4 d2
	
	a4 d2. a2 d4 g2. d2 a4
	b4:m d g d2 a4 d2 a4 d2.
}

EnglishOne = \lyricmode
{
	\set stanza = #"1. "
	The4 first2 No4 -- el2
		the4 an4 -- gel4 did4 say2
	Was8 to8 cer4 -- tain4 poor4 shep4 -- herds4
		in4 fields4 as4 they4 lay;2
	In4 fields2 where4 they2
		lay4 keep4 -- ing4 their4 sheep,2
	On8 a8 cold4 win4 -- ter's4 night2
		that4 was2 so4 deep.2
}

EnglishRefrain = \lyricmode
{
	No4 -- el,2 No4 -- el,2
		No4 -- el,2 No4 -- el,2.
	Born4 is4 the4 King2
		of4 Is2 -- ra4 -- el.2.
}


EnglishTwo = \lyricmode
{
	\set stanza = #"2. "
	They4 look2 -- ed4 up2
		and4 saw2 a4 star2
	Shin8 -- ning8 in2 the4 East,2
		be4 -- yond2 them4 far,2
	And4 to2 the4 earth2
		it4 gave2 great4 light,2
	And4 so4 it4 con4 -- tin4 -- ued4
		both4 day2 and4 night.2
}

EnglishThree = \lyricmode
{
	\set stanza = #"3. "
	This4 star2 drew4 nigh2
		to4 the2 north4 -- west,2
	O'er4 Beth2 -- le4 -- hem2
		it4 took2 its4 rest,2
	And4 there2 it4 did2
		both4 stop2 and4 stay2
	Right4 o4 -- ver4 the4 place2
		where4 Je2 -- sus4 lay2.
}

EnglishFour = \lyricmode
{
	\set stanza = #"4. "
	Then4 en2 -- ter'd4 in2
		those4 wise2 -- men4 three,2
	Full4 rev2 -- 'rent4 -- ly2
		up4 -- on2 their4 knee,2
	And4 of2 -- fer'd4 there,2
		in4 His2 pres4 -- ence,2
	Their4 gold2 and4 myrrh2
		and4 frank2 -- in4 -- cense.2
}


# STOS-Basic code

The following is a series of STOS BASIC programs done for the Atari ST.
This is what I had fun playing with in late 1980s and early 1990s before I switched to Macs at the end of 1995.

I encourage the community to review and port these to Javascript where applicable

# Fractals

The following are a set of fractal source code:

FERN.ASC

JULIA.ASC

MAN.ASC

MANDEL.ASC

MANDEL1.ASC

# Sound conversion

We used to sample digital sound via various cartridges, or supplied them viable shareware or public domain libraries and bulletin boards. With the release of the STE and its DAC hardware, we needed to convert .SPL files into ones suitable for the DAC hardware. My friend Tim got a copy of the developer kit and we promptly figured out how to call the hardware to do this. Here is a code sample we used:

STE_DAC.ASC

We did a really great app called BroadCASTer back int he day that allowed 2 mono files to be merged into stereo, but alas the code and binary has gone missing in the years since. It would have been in the old WACE PD library.
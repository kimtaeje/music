// play
BPM_bach bpm;

Rhodey piano1 => dac;
Rhodey piano2 => dac;
Tool_bach tool;
CrabCanon crab;
crab.note @=> int note[];
crab.length @=> dur length[];


<<< "Play Crab Canon", "forward" >>>;
tool.play(piano1, note, length);

<<< "Play Crab Canon", "backward" >>>;
tool.retrograde(piano2, note, length);


<<< "Play Crab Canon", "forward and backward together" >>>;
spork ~ tool.play(piano1, note, length);
spork ~ tool.retrograde(piano2, note, length);
bpm.hn * 36 => now;




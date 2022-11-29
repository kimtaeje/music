BPM bpm;

bpm.hn => dur hn;

Rhodey piano[3];
piano[0] => dac;
piano[1] => dac;
piano[2] => dac;

Tool tool;
melody melo;
base ba;

melo.melody @=> string melody[];
melo.melody_high @=> string melody_high[];
melo.durs @=> dur durs[];
ba.bass @=> string bass[];
ba.durs_bass @=> dur durs_bass[];

spork ~ tool.play(piano[0], melody, durs);
spork ~ tool.play(piano[1], melody_high, durs);
spork ~ tool.play(piano[2], bass, durs_bass);
hn * 16 => now;

BPM t;
t.hn=> dur hn; // 1/2
t.qn => dur qn; // 1/4
t.en => dur en; // 1/8
t.wn => dur wn; // 4/4

Play_base p1;

[
["D3","-1","D3","-1"],
["D3","-1","D3","-1"],
["C3","-1","C3","-1"],
["C3","-1","C3","-1"],

["E3","-1","E3","-1"],
["E3","-1","E3","-1"],
["D3","-1","D3","-1"],
["D3"],

["G#2","D#3","A2","A#2","C3"],
["C3","C3","C3","C3"],
["G#2","D#3","A2","A#2","C3"],
["C3","C3","C3","C3"],
["G#2","A#2"],

["F3","F3"],
["G#2","D#3","A2","A#2","C3"],
["C3","C3","C3","C3"],
["G#2","D#3","A2","A#2","C3"],

["C3","C3","C3","C3"],
["G#2","D#3","A2","A#2","C3"],
["C3","C3","C3","C3"],
["G#2","A#2"],

["F3","F3"],
["G#2","D#3","A2","A#2","C3"],
["C3","C3","C3","C3"]
] @=> string bass[][];

[
[qn,qn,qn,qn],
[qn,qn,qn,qn],
[qn,qn,qn,qn],
[qn,qn,qn,qn],

[qn,qn,qn,qn],
[qn,qn,qn,qn],
[qn,qn,qn,qn],
[wn],

[qn,en,en,qn,qn],
[qn,qn,qn,qn],
[qn,en,en,qn,qn],
[qn,qn,qn,qn],
[hn,hn],

[hn,hn],
[qn,en,en,qn,qn],
[qn,qn,qn,qn],
[qn,en,en,qn,qn],

[qn,qn,qn,qn],
[qn,en,en,qn,qn],
[qn,qn,qn,qn],
[hn,hn],

[hn,hn],
[qn,en,en,qn,qn],
[qn,qn,qn,qn]
] @=> dur durs_bass[][];

Mandolin base => dac;
spork ~ p1.play(base, bass, durs_bass);
t.wn * 24 +qn=> now;
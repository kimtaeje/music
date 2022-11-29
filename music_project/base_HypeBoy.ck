BPM t;

t.qn => dur qn; // 1/4
t.wn => dur wn; // 4/4

Play_base p1;

[
["A2","E3","A3","E3"],
["B2","F3","E3","B2"],
["A2","E3","A3","E3"],
["B2","F3","F3","B2"],
["A2","E3","A3","E3"], 
["B2","F3","E3","B2"],
["A2","E3","A3","E3"], 
["B2","F3","F3","B2"],
["A2","E3","A3","E3"],
["B2","F3","E3","B2"],
["A2","E3","A3","E3"],
["B2","F3","F3","B2"],
["A2","E3","A3","E3"],
["B2","F3","E3","B2"],
["A2","E3","A3","E3"],
["B2","F3","F3","B2"]
] @=> string bass[][];

[
[qn,qn,qn,qn],   
[qn,qn,qn,qn],       
[qn,qn,qn,qn],
[qn,qn,qn,qn],
[qn,qn,qn,qn],   
[qn,qn,qn,qn],       
[qn,qn,qn,qn],
[qn,qn,qn,qn], 
[qn,qn,qn,qn],   
[qn,qn,qn,qn],       
[qn,qn,qn,qn],
[qn,qn,qn,qn],
[qn,qn,qn,qn],   
[qn,qn,qn,qn],       
[qn,qn,qn,qn],
[qn,qn,qn,qn]
] @=> dur durs_bass[][];

Mandolin base => dac;
spork ~ p1.play(base, bass, durs_bass);
t.wn * 16 +qn=> now;

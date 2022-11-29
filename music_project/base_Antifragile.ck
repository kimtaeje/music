BPM t;
t.hn=> dur hn; // 1/2
t.qn => dur qn; // 1/4
t.en => dur en; // 1/8
t.wn => dur wn; // 4/4

Play_base p1;

[
["E3","B3","C4","A3"],              ["C4","A3","E3","B3"],           ["E3","B3","C4","A3"],
["C4","A3","E3","B3"],              ["E3","B3","F3","F3","F3"],      ["E3","B3","F3","F3","F3"],
["E3","B3","F3","F3","F3"],         ["E3","E3","F3","F3"],           ["E3","B3","F3","F3","F3"],
["E3","B3","F3","F3","F3"],         ["E3","B3","F3","F3","F3"],      ["E3","E3","F3","F3"],
["E3","E3","F3","B2"],              ["E3","E3","F3","B2"],           ["E3","E3","F3","B2"],
["E3","E3","F3","F3"],              ["E3","E3","F3","B2"],           ["E3","E3","F3","B2"],
["E3","E3","F3","B2"],              ["-1","-1","C4","B3"],           ["E3","B3","A3","A3","A3","A3"],
["E3","B3","A3","A3","A3","A3"],    ["E3","B3","A3","A3","A3","A3"], ["E3","B3","F3","F3","F3"]
]@=> string bass[][];
    

[
[qn,qn,qn,qn],      [qn,qn,qn,qn],          [qn,qn,qn,qn],
[qn,qn,qn,qn],      [qn,en,en,qn,qn],       [qn,en,en,qn,qn],
[qn,en,en,qn,qn],   [qn,qn,qn,qn],          [qn,en,en,qn,qn],
[qn,en,en,qn,qn],   [qn,en,en,qn,qn],       [qn,qn,qn,qn],
[hn,en,en,qn],      [hn,en,en,qn],          [hn,en,en,qn],
[qn,qn,qn,qn],      [hn,en,en,qn],          [hn,en,en,qn],
[hn,en,en,qn],      [hn,qn,en,en],          [qn,en,en,en,en,qn],
[qn,en,en,en,en,qn],[qn,en,en,en,en,qn],    [qn,en,en,qn,qn]
] @=>dur durs_bass[][];

Mandolin base => dac;
spork ~ p1.play(base, bass, durs_bass);

t.wn * 24 +qn=> now;
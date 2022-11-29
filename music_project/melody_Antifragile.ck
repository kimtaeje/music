BPM t;
t.qn => dur qn; // 1/4
t.en => dur en; // 1/8
t.sn => dur sn; // 1/16
t.hen => dur hen; // 1/8 + 1/16
t.hqn => dur hqn; // 1/4 + 1/8 = 3/8
t.wn => dur wn; // 4/4

Play_piano p;

[
["-1","B4","B4","G5","G5","G5","G4","B4"],              ["C5","B4","B4","G5","G5","F5","B4"],               ["B4","B4","B4","G5","G5","G5","F5","B4"],
["C5","-1","B5","E5","E5","B5","E5","E5","B5","B5"],    ["-1","E5","E5","E5","E5","F5","B4"],               ["E5","E5","E5","E5","E5","E5","E5","F5","B4"],
["-1","-1","E5","E5","E5","F5","B4","A4"],              ["E5","B4","E5","B4","E5","B4","E5","B4"],         ["-1","E5","E5","E5","E5","F5","B4"],
["E5","E5","E5","E5","E5","E5","E5","F5","B4"],         ["-1","-1","E5","E5","E5","F5","B4","A4"],          ["E5","B4","E5","B4","E5","B4","E5","B4"],
["A5","B5","A5","F5","F5","Ds5","D5","D5","D5"],        ["A5","B5","A5","F5","F5","Ds5","D5","D5","D5"],    ["A5","B5","A5","F5","F5","Ds5","D5","D5","D5"],
["E5","B4","E5","B4","E5","B4","E5","B4"],              ["-1","E5","E5","E5","E5","E5"],                    ["D5","E5","E5","E5","E5","E5","E5","E5"],
["E5","E5","E5","E5","B4","E5","B4","E5"],              ["B4","B4","F5","E5","E5","C6","B5"],               ["A5","G5","G5","F5","E5","C6","B5"],
["A5","G5","G5","F5","E5","C6","B5"],                   ["A5","G5","G5","F5","E5","C6","B5"],               ["A5","G5","G5","F5","E5","E5","G5","E5","E5","G5"]
] @=> string melody[][];

[
[hqn,sn,sn,en,sn,sn,en,en],      [hqn,sn,sn,en,en,en,en],       [hqn,sn,sn,en,sn,sn,en,en],
[qn,qn,en,sn,sn,en,sn,sn,en,en], [qn,en,sn,sn,en,en,qn],        [en,sn,sn,en,sn,sn,en,en,qn],
[qn,en,sn,sn,en,en,en,en],       [sn,hen,sn,hen,sn,hen,sn,hen], [qn,en,sn,sn,en,en,qn],
[en,sn,sn,en,sn,sn,en,en,qn],    [qn,en,sn,sn,en,en,en,en],     [sn,hen,sn,hen,sn,hen,sn,hen],
[sn,sn,en,en,en,en,en,en,en],    [sn,sn,en,en,en,en,en,en,en],  [sn,sn,en,en,en,en,en,en,en],
[sn,hen,sn,hen,sn,hen,sn,hen],   [qn,en,en,qn,en,en],           [en,en,en,en,en,en,en,en],
[en,en,en,en,en,en,en,en],       [en,en,en,en,qn,en,en],        [en,sn,sn,en,hqn,en,en],
[en,sn,sn,en,hqn,en,en],         [en,sn,sn,en,hqn,en,en],       [en,sn,sn,en,en,en,en,sn,sn,en]
] @=> dur durs[][];


Rhodey piano => dac;
spork ~ p.play(piano, melody, durs);
t.wn * 24 +qn=> now;
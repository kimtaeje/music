BPM t;
t.qn => dur qn; // 1/4
t.en => dur en; // 1/8
t.wn => dur wn; // 4/4

Play_piano p; 

// highlight part
[
["G4","G4","A#4","B4","F4","F4","-1"],
["G4","G4","A#4","B4","F4","F4","D#4"],
["E4","C4","D4","D4","C4","D#4","D4","D4"],
["D4","E4","D#4","D#4","C4","E4","D4","D4"],

["-1","G4","C4","G4","F4","G4","F4","E4"],
["-1","G4","C4","G4","F4","G4","F4","E4"],
["-1","G4","G4","G4","G4","F4","D#4","C4"],
["C4","C4","C4","C4","C4","C4","C5"],

["C5"],
["-1","C4","C4","C4","C4","C4","C4","C5"],
["C5"],
["C5"],
["F4","D#4","F4","C4","F4","E4","F4","C4"],

["F4","D#4","F4","C4","C4","C4","C4","C5"],
["C5"],
["-1","C4","C4","C4","C4","C4","C4","C5"],
["C5"],

["-1","C4","C4","C4","C4","C4","C4","C5"],
["C5"],
["C5"],
["F4","D#4","F4","C4","F4","E4","F4","C4"],

["F4","D#4","F4","C4","C4","C4","C4","C5"],
["C5"],
["C5"]
] @=> string melody[][];


[
[en,en,en,en,en,en,qn], 
[en,en,en,en,en,qn,en], 
[en,en,en,en,en,en,en,en],
[en,en,en,en,en,en,en,en],

[en,en,en,en,en,en,en,en], 
[en,en,en,en,en,en,en,en], 
[en,en,en,en,en,en,en,en],
[qn,en,en,en,en,en,en], 

[wn], 
[en,en,en,en,en,en,en,en], 
[wn],
[wn],
[en,en,en,en,en,en,en,en],

[en,en,en,en,en,en,en,en],  
[wn],
[en,en,en,en,en,en,en,en], 
[wn],

[en,en,en,en,en,en,en,en],
[wn],
[wn],
[en,en,en,en,en,en,en,en],

[en,en,en,en,en,en,en,en],
[wn],
[wn] 
] @=> dur durs[][];

Rhodey piano => dac;
spork ~ p.play(piano, melody, durs);

t.wn * 24 +qn=> now;
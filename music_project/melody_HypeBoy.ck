BPM t;
t.hn=> dur hn; // 1/2
t.qn => dur qn; // 1/4
t.en => dur en; // 1/8
t.sn => dur sn; // 1/16
t.hen => dur hen; // 1/8 + 1/16
t.wn => dur wn; // 4/4
t.tn => dur tn; // 1/12

Play_piano p;

[
["B4","B4","A4","G4","G4","G4","F4","G4"],
["A4","D4","B4","B4","B4","B4"],
["B4","B4","A4","G4","G4","G4","F4","G4"], 
["A4","D4","B4","B4","-1"], 
["G4","A4","A4","B4","A4","G4","G4"], 
["F4","G4","G4","A4","A4","G4","D5","B4"],
["-1","B4","B4","B4","A4","B4","A4","A4","B4"],
["B4","B4","A4","B4","A4","-1","E4","E4","D4","G4"],
["-1","G4","G4","G4","G4","E4","E4","F4","G4"],
["F4","F4","F4","F4","A4","A4","G4","E4","F4","G4"],
["G4","G4","G4","G4","G4","E4","E4","B3","B3"],
["B3","B3","D4","D4","E4","E4","E4","F4","G4","E4","F4","G4"],
["-1","G4","G4","G4","G4","E4","E4","F4","G4"],
["F4","F4","F4","F4","A4","A4","G4","E4","F4","G4"], 
["G4","G4","G4","G4","G4","E4","E4","B3","B3"],
["B3","B3","F4","F4","D4","E4","E4"]              
] @=> string melody[][];


[
[en,en,en,en,qn,tn,tn,tn],    [en,qn,en,qn,hen,sn],        [en,en,en,en,qn,tn,tn,tn],
[en,qn,en,qn,qn],  [hen,sn,en,en,hen,sn,qn],        
[hen,sn,en,en,hen,sn,en,en],
[en,en,en,sn,sn,sn,hen,en,en],       
[en,sn,sn,sn,hen,hen,sn,sn,sn,en], 
[en,en,en,en,sn,hen,sn,sn,en],
[en,sn,sn,en,en,sn,hen,sn,sn,en],    
[en,en,en,en,sn,hen,en,sn,sn],     
[en,sn,sn,en,sn,sn,sn,sn,en,sn,sn,en],
[en,en,en,en,sn,hen,sn,sn,en],    
[en,sn,sn,en,en,sn,hen,sn,sn,en],  
[en,en,en,en,sn,hen,en,sn,sn],
[en,sn,sn,en,sn,sn,hn]     
] @=> dur durs[][];

Rhodey piano => dac;
spork ~ p.play(piano, melody, durs);

t.wn * 16+qn => now;
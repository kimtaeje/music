BPM_row bpm;
bpm.tempo(300);
bpm.n1=> dur n1;
bpm.n2=>dur n2;
bpm.n3=>dur n3;
bpm.n6=>dur n6;

[ // melody
60,60,             60,62,64,          64,62,64,65, 67,
72,72,72,67,67,67, 64,64,64,60,60,60, 67,65,64,62, 60
] @=> int melody[];

[ // time
n3,n3,             n2,n1,n3,          n2,n1,n2,n1, n6,
n1,n1,n1,n1,n1,n1, n1,n1,n1,n1,n1,n1, n2,n1,n2,n1, n6
] @=> dur length[];

Wurley hand => dac;
Tool tool;
tool.play(hand,melody,length);
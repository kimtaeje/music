
BPM1 bpm;
bpm.tempo(120);
bpm.n1=>dur n1;
bpm.n2=>dur n2;
bpm.n3=>dur n3;
bpm.n5=>dur n5;


[ // halfmoon melody
67,69,67,64,  67,64,60,55,  57,60,62,67,     64,-1,
67,69,67,64,  67,64,60,55,  57,60,55,62,     60,-1,
64,64,64,62,  64,   69,67,  64,62,64,69,     67,-1,
72,   67,67,  64,64,69,69,  67,64,60,55,62,  60,-1
] @=> int melody[];
[ // halfmoon melody time
n2,n1,n2,n1,  n1,n1,n1,n3,  n2,n1,n2,n1,     n5,n1,
n2,n1,n2,n1,  n1,n1,n1,n3,  n2,n1,n2,n1,     n5,n1,
n2,n1,n2,n1,  n2,   n1,n3,  n2,n1,n2,n1,     n5,n1,
n3,   n2,n1,  n2,n1,n2,n1,  n1,n1,n1,n2,n1,  n5,n1
] @=> dur melody_len[];

Rhodey righthand => dac;
Tool tool;
tool.play(righthand, melody, melody_len);
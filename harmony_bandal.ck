
BPM1 bpm;
bpm.tempo(120);
bpm.n1=>dur n1;


[48,52,55, 48,52,55, 48,52,55, 48,52,55,
48,53,57, 47,50,53, 48,52,55, 48,52,55,
48,52,55, 48,52,55, 48,52,55, 48,52,55,
48,53,57, 47,50,53, 48,52,55, 48,52,55,
48,52,55, 48,52,55, 45,48,52, 47,50,53,
48,52,55, 48,52,55, 47,50,53, 47,50,53,
48,52,55, 48,52,55, 48,52,55, 48,53,57,
48,52,55, 47,50,53, 48,52,55, 48,52,55] @=> int harmony[];


[ // halfmoon harmony time
n1,n1,n1, n1,n1,n1, n1,n1,n1, n1,n1,n1,
n1,n1,n1, n1,n1,n1, n1,n1,n1, n1,n1,n1,
n1,n1,n1, n1,n1,n1, n1,n1,n1, n1,n1,n1,
n1,n1,n1, n1,n1,n1, n1,n1,n1, n1,n1,n1,
n1,n1,n1, n1,n1,n1, n1,n1,n1, n1,n1,n1,
n1,n1,n1, n1,n1,n1, n1,n1,n1, n1,n1,n1,
n1,n1,n1, n1,n1,n1, n1,n1,n1, n1,n1,n1,
n1,n1,n1, n1,n1,n1, n1,n1,n1, n1,n1,n1
] @=> dur harmony_len[];





BPM1 bpm;
bpm.tempo(120);
bpm.n1=>dur n1;
bpm.n2=>dur n2;
bpm.n3=>dur n3;
bpm.n5=>dur n5;

Tool tool;
tool.play(lefthand, harmony, harmony_len);

public class base{
BPM bpm;

bpm.qn => dur qn;
bpm.hn => dur hn; 

[
"F3","C4","F3", "F3","C4","F3", "F3","C4","F3", "F3","C4","F3",
"F3","C4","F3", "F3","C4","F3", "F3","C4","F3", "F3","C4","F3"
] @=> string bass[];

[
 qn,  qn,  hn,   qn,  qn,  hn,   qn,  qn,  hn,   qn,  qn,  hn,
 qn,  qn,  hn,   qn,  qn,  hn,   qn,  qn,  hn,   qn,  qn,  hn
] @=> dur durs_bass[];
}
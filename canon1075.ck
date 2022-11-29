public class canon1075{
    
        // tempo
    BPM_canon2 bpm;
    bpm.tempo(150);
    bpm.n1=>dur n1;
    bpm.n2 => dur n2;

    [ // score
    67,72,67,69,67,65,
    64,   76,77,76,74,
    72,67,72,71,72,74,
    76,   64,62,64,65
    ] @=> int melody[];

    [ // time
    n1,n1,n1,n1,n1,n1,
    n2,   n1,n1,n1,n1,
    n1,n1,n1,n1,n1,n1,
    n2,   n1,n1,n1,n1
    ] @=> dur length[];
}
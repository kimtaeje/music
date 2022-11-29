// tempo
BPM_canon2 bpm;
bpm.n6 => dur n6;
Tool_canon2 tool;
canon1075 cannon;
cannon.melody @=> int melody[];
cannon.length @=> dur length[];

// set up instruments
Rhodey hand1 => dac;
Rhodey hand2 => dac;

// play duo
spork ~ play1();
spork ~ play2();
n6 * 11 => now;

fun void play1() { // total = n6 * 11
    tool.play(hand1, melody, length); // n6 * 4
    tool.play(hand1, melody, length); // n6 * 4
    tool.play(hand1, melody, length, 11); // n6 * 2
    tool.playnote(hand1, 72, n6); // n6 * 1
}

fun void play2() { // total = n6 * 11
    n6 => now; // n6 * 1
    tool.play(hand2, melody, length); // n6 * 4
    tool.play(hand2, melody, length); // n6 * 4
    tool.play(hand2, melody, length, 6); // n6 * 1
    tool.playnote(hand2, 64, n6); // n6 * 1
}


// tempo
0.25::second => dur beat;
beat => dur qn; // quarter note (4??, 1??)
beat * 4 => dur wn; // whole note (??, 4??)

fun void ping() {
    Impulse pin => ResonZ rez => dac;
    700 => rez.freq;
    50 => rez.Q;
    while (true) {
        <<< "ping!", "" >>>;
        100 => pin.next;
        wn => now;
    }
}

fun void pong() {
    Impulse pon => ResonZ rez => dac;
    800 => rez.freq;
    50 => rez.Q;
    while (true) {
        <<< "  pong!", "" >>>;
        100 => pon.next;
        qn => now;
    }
}

// create two children shreds
spork ~ ping();
spork ~ pong();

// a parent shred
while (true)
    wn => now;
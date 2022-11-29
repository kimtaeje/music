// tempo
0.25::second => dur beat;
beat => dur qn; // quarter note (1/4)
beat * 2 => dur hn; // half note (2/4)
beat * 4 => dur wn; // whole note (4/4)

fun void kick() {
    SndBuf kick => dac;
    me.dir()+"/audio/kick_01.wav" => kick.read;
    while (true) {
        wn => now;
        0 => kick.pos;
    }
}

fun void snare() {
    SndBuf snare => dac;
    me.dir()+"/audio/snare_01.wav" => snare.read;
    while (true) {
        hn => now;
        0 => snare.pos;
    }
}

fun void hihat() {
    SndBuf hihat => dac;
    me.dir()+"/audio/hihat_01.wav" => hihat.read;
    0.2 => hihat.gain;
    while (true) {
        qn => now;
        0 => hihat.pos;
    }
}

// create three children shreds
spork ~ kick();
wn * 2 => now;
spork ~ hihat();
wn * 2 + qn=> now;

spork ~ snare();
wn * 4 => now;

// a parent shred that runs forever
while (true)
    wn => now;
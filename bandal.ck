// tempo
BPM1 bpm;
bpm.tempo(120);
bpm.n1=>dur n1;


Machine.add(me.dir()+"melody_bandal.ck");
Machine.add(me.dir()+"harmony_bandal.ck");
96 * bpm.n1 => now;



fun void play(StkInstrument instrument, int notes[], dur durs[]) {
    for (0 => int i; i < notes.size(); i++) {
        if(notes[i] != -1){
        Std.mtof(notes[i]) => instrument.freq;
        1 => instrument.noteOn;
        }
        durs[i] => now;
        1 => instrument.noteOff;
    }
}


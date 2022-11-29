class TheEvent extends Event {
    int note;
    float velocity;
}
TheEvent e1, e2;
Event e1,e2,e3,e4,e5,e6,e7;


NRev globalReverb => dac;
.1 => globalReverb.mix;

spork~poly(new StiKarp,e1,["B3","E4","B3","E4","E4"],[2.0,1.0,2.0,1.0,3.0]);
spork~poly(new PerFlut,e2,["E4","E4","B4","G4","B4"],[3.0,2.0,1.0,1.0,2.0]);
spork~poly(new StiKarp,e3,["E4","G4","B4","G4","F#4","B3"],[2.0,1.0,2.0,0.5,0.5,3.0];
spork~poly(new PerFlut,e4,["E4","E4","F#4"],[3.0,3.0,3.0];

spork~buk(me.dir()+"audio/snare_01.wav",e5,[1.0,2.0,1.0,3.0,2.0]);
spork~buk(me.dir()+"audio/snare_01.wav",e6,[3.0,2.0,1.0,1.0,2.0]);
spork~buk(me.dir()+"audio/snare_01.wav",e7,[3.0,6.0]);

me.yield();
while(true){
    Math.random2(1,6) => int dice;
    if(dice==3)
        e3.signal();
    else if (dice=4)
        e4.signal();
    else if (dice <=2)
        e1.signal();
    else 
        e2.signal();


[
"B3","E4","B3","E4","E4",       "B3","E4","B3","E4","E4",
"E4","E4","E4","F#4","F#4",     "E4","E4","B4","G4","B4",
"B3","B3","E4","E4",            "E4","E4","F#4",
"E4","G4","B4","G4","F#4","B3", "E4","E4",
"G4","G4",                      "G4","G4","B4","F#4",
"E4","G4","B4","F#4",           "E4","B3",
"E4","E4","E4","F#4",           "B4","G4","G4","F#4","E4",
"E4","G4","F#4","E4","B3",      "E4","E4"
] @=> string notes[];

[
2.0,1.0,2.0,1.0,3.0,     2.0,1.0,2.0,1.0,3.0,
1.0,2.0,1.0,2.0,3.0,     3.0,2.0,1.0,1.0,2.0,
3.0,2.0,1.0,3.0,         3.0,3.0,3.0,
2.0,1.0,2.0,0.5,0.5,3.0, 3.0,6.0,
3.0,6.0,                 3.0,2.0,1.0,3.0,
3.0,2.0,1.0,3.0,         3.0,6.0,
1.0,2.0,3.0,3.0,         1.0,2.0,1.0,2.0,3.0,
2.0,1.0,2.0,1.0,3.0,     3.0,6.0
] @=> float durs[];



StifKarp s => dac;
for (0 => int i; i < notes.size(); i++) {
    Std.mtof(midi(notes[i])) => s.freq;
    0.5 => s.noteOn;
    durs[i]::second / 5 => now;
}

//qkrwk
fun void poly(StkInstrument instrument, TheEvent event, string note[],float length[]) {
    instrument => globalReverb;
    while (true) {        
        event => now;        
        for(0=>int i; i <note.size(); i++){
            Std.mtof(midi(note[i])) => instrument.freq;
            0.5=>instrument.noteOn;
            length[i]::second / 5 => now;
        }
    }
}



//wkdeks
fun void buk(string sound,Event event,float length[]){
    SndBuf drum => dac;
    sound_file => drum.read;
    drum.samples()=>drum.pos;
    while(true){
        event => now;
         for(0=>int i; i <length.size(); i++){
            0=> drum.pos;
            length[i]::second / 5 => now;
        }
    }
}




fun int midi(string name) {
    [21,23,12,14,16,17,19] @=> int notes[]; // A0,B0,C0,D0,E0,F0,G0
    name.charAt(0) - 65 => int base; // A=0,B=1,C=2,D=3,E=4,F=5,G=7
    notes[base] => int note;
    if (0 <= base && base <= 6) {
        if (name.charAt(1) == '#' || name.charAt(1) == 's') // sharp
            notes[base] + 1 => note;
        if (name.charAt(1) == 'b' || name.charAt(1) == 'f') // flat
            notes[base] - 1 => note;
    }
    else {
        <<< "Illegal Note Name!" >>>;
        return 0;
    }
    name.charAt(name.length()-1) - 48 => int oct; // 0, 1, 2, ..., 9
    if (0 <= oct && oct <= 9) {
        12 * oct +=> note;
        return note;
    }
    else {
        <<< "Illegal Octave!" >>>;
        return 0;
    }
}
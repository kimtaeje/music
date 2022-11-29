public class Play_piano{
    
    MidiOut mout;
    MidiMsg msg;
    0 => int port;
    if (!mout.open(port)) {
        <<< "Error: MIDI port did not open on port: ", port >>>;
        me.exit();
    }
    
    fun void sendOutMIDInote(int on, int note, int velocity) {
        if (on == 0)
            128 => msg.data1; 
        else // on == 1
            144 => msg.data1; 
        note => msg.data2;
        velocity => msg.data3;
        mout.send(msg);
    }
    int note, volume;
    
    fun void playNote(StkInstrument instrument, string note, dur duration){
        Std.mtof(ston(note)) => instrument.freq;
        if (ston(note) != -1){
            0.0 => instrument.gain;
            100 => volume;
            sendOutMIDInote(1, ston(note), volume);
        } 
        duration => now;
        sendOutMIDInote(0, ston(note), volume);
    }
    
    fun void play(StkInstrument instrument, string notes[][], dur durs[][]){
        for (0 => int i; i < notes.size(); i++){
            for (0 => int j; j < notes[i].size(); j++){
                playNote(instrument,notes[i][j],durs[i][j]);
            }
        }
    }
    
    fun int ston(string s){
        if (s.charAt(0) == '-'){
            return -1;
        }
        else {
            [21,23,12,14,16,17,19] @=> int notes[];
            s.charAt(0) - 65 => int base;
            notes[base] => int note;
            if (0 <= base && base <= 6) {
                if (s.charAt(1) == '#' || s.charAt(1) == 's') // sharp
                    notes[base] + 1 => note;
                if (s.charAt(1) == 'b' || s.charAt(1) == 'f') // flat
                    notes[base] - 1 => note;
            }
            else
                <<< "Illegal Note Name!" >>>;
            s.charAt(s.length()-1) - 48 => int oct; // 0, 1, 2, ..., 9
            if (0 <= oct && oct <= 9) {
                12 * oct +=> note;
            }
            return note;
        }
    }
}
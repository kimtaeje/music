public class Tool_bach {
    fun void play(StkInstrument instrument, int note[], dur length[]) {
        for (0 => int i; i < note.size(); i++)
            playnote(instrument, note[i], length[i]);
    }

fun void retrograde(StkInstrument instrument, int note[], dur length[]) {
    for (note.size() - 1 => int i; i >= 0; i--) {
        if (note[i] != -1) {
            Std.mtof(note[i]) => instrument.freq;
            1 => instrument.noteOn;
        }
        length[i] => now;
        1 => instrument.noteOff;
    }
}
    fun void playnote(StkInstrument instrument, int note, dur length) {
        if (note != -1) {
            Std.mtof(note) => instrument.freq;
            1 => instrument.noteOn;
        }
        length => now;
        1 => instrument.noteOff;
    }
    

}
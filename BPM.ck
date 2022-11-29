public class BPM { // Beats Per Minute
    
    static dur qn, en, hn;
    
    fun void tempo(float beat) { // beat in BPM
        60.0 / beat => float spb; // seconds per beat  
        spb::second => qn; // 1/4
        qn * 2 => hn; // 1/2
        qn / 2.0 => en; // 1/8
    }
}
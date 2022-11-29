public class BPM_bach { // Beats Per Minute

    static dur qn, en, hn;

    fun void tempo(float beat) { // beat in BPM
        60.0 / beat => float spb; // seconds per beat  
        spb::second => qn; // 1/4
        qn * 2 => hn; // 2/4
        qn / 2.0 => en; // 1/8
        
    }
}
public class BPM { // Beats Per Minute
    // globally accessible variables 
    static dur sn, qn, en, tn, hn, wn, hen, hqn;

    fun void tempo(float beat) { // beat in BPM
        60.0 / beat => float spb; // Seconds Per Beat  
        spb::second => qn; // 1/4
        qn / 2.0 => en; // 1/8
        en / 2.0 => sn; // 1/16
        qn / 3.0 => tn; // 1/12
        qn * 2.0 => hn; // 1/2
        qn * 4.0 => wn; // 4/4
        sn * 3.0 => hen; // 1/8 + 1/16
        en * 3.0 => hqn; // 1/4 + 1/8        
        } 
}

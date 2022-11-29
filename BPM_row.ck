public class BPM_row { // Beats Per Minute

    static dur n1, n2, n3, n6;

    fun void tempo(float beat) { // beat in BPM
        60.0 / beat => float spb; // seconds per beat  
        spb::second => n1; // 1/6
        n1 * 2 => n2; // 2/6
        n1 * 3 => n3; // 3/6
        n1 * 5 => n6; // 5/6
    }
}
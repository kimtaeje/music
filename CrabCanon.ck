public class CrabCanon{
    
    // tempo
    BPM_bach bpm;
    bpm.tempo(150);
    bpm.qn =>dur qn;
    bpm.en =>dur en;
    bpm.hn =>dur hn;

    [ // score
    60,         63,         67,         68,
    59,         -1,   67,         66,         65,
          64,         63,         62,   61,   60,
    59,   55,   62,   65,   63,         62,
    60,         63,         67,65,67,72,67,63,62,63,
    65,67,69,71,72,63,65,67,68,62,63,65,67,65,63,62,
    63,65,67,68,70,68,67,65,67,68,70,72,73,70,68,67,
    69,71,72,74,75,72,71,69,71,72,74,75,77,74,67,74,
    72,74,75,77,75,74,72,71,72,   67,   63,   60
    ] @=> int note[];

    [ // time
    hn,         hn,         hn,         hn,    
    hn,         qn,   hn,         hn,         hn,     
          hn,         hn,         qn,   qn,   qn,
    qn,   qn,   qn,   qn,   hn,         hn,   
    hn,         hn,         en,en,en,en,en,en,en,en,
    en,en,en,en,en,en,en,en,en,en,en,en,en,en,en,en,
    en,en,en,en,en,en,en,en,en,en,en,en,en,en,en,en,      
    en,en,en,en,en,en,en,en,en,en,en,en,en,en,en,en,      
    en,en,en,en,en,en,en,en,qn,   qn,   qn,   qn
    ] @=> dur length[];
}
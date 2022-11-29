Gain master[3];
master[0] => dac.left;
master[1] => dac;
master[2] => dac.right;

SndBuf kick => master[1];
SndBuf snare => master[1];
SndBuf hihat => master[2];
SndBuf click => master[0];
SndBuf click2 => master[0];
SndBuf cowbell => master[2];


me.dir() + "audio/kick_01.wav" => kick.read;
me.dir() + "audio/snare_01.wav" => snare.read;
me.dir() + "audio/hihat_01.wav" => hihat.read;
me.dir() + "audio/click_04.wav" => click.read;
me.dir() + "audio/click_02.wav" => click2.read;
me.dir() + "audio/cowbell_01.wav" => cowbell.read;

kick.samples() => kick.pos;
snare.samples() => snare.pos;
hihat.samples() => hihat.pos;
click.samples() => click.pos;
click2.samples() => click2.pos;
cowbell.samples() => cowbell.pos;
0.3 => hihat.gain;
0.4 => click.gain;

SawOsc violin => dac;
0.5=>violin.gain;

SqrOsc clarinet => dac;
0.6 => clarinet.gain;



0.2::second => dur TEMPO;
[1,0,0,0, 1,0,0,0, 1,0,0,0, 1,0,0,0,
1,0,0,0, 1,0,0,0, 1,0,0,0, 1,0,0,0,
1,0,0,0, 1,0,0,0, 1,0,0,0, 1,0,0,0,
1,0,0,0, 1,0,0,0, 1,0,0,0, 1,0,0,0,
1,0,0,0, 1,0,0,0, 1,0,0,0, 1,0,0,0,
1,0,0,0, 1,0,0,0, 1,0,0,0, 1,0,0,0,
1,0,0,0, 1,0,0,0, 1,0,0,0, 1,0,0,0,
1,0,0,0, 1,0,0,0, 1,0,0,0, 1,0,0,0,
1,0,0,0, 1,0,0,0, 1,0,0,0, 1,0,0,0,
1,0,0,0, 1,0,0,0, 1,0,0,0, 1,0,0,0,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1] @=> int kick_hits[];
[0,0,1,0, 0,0,1,0, 0,0,0,0, 1,1,1,1,
0,0,1,0, 0,0,1,0, 0,0,0,0, 1,1,1,1,
0,0,1,0, 0,0,1,0, 0,0,0,0, 1,1,1,1,
0,0,1,0, 0,0,1,0, 0,0,0,0, 1,1,1,1,
0,0,1,0, 0,0,1,0, 0,0,0,0, 1,1,1,1,
0,0,1,0, 0,0,1,0, 0,0,0,0, 1,1,1,1,
0,0,1,0, 0,0,1,0, 0,0,0,0, 1,1,1,1,
0,0,1,0, 0,0,1,0, 0,0,0,0, 1,1,1,1,
0,0,1,0, 0,0,1,0, 0,0,0,0, 1,1,1,1,
0,0,1,0, 0,0,1,0, 0,0,0,0, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1] @=> int snare_hits[];
[1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 0,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1,
1,1,1,1, 1,1,1,1, 1,1,1,1, 1,1,1,1] @=> int cowbell_hits[];


2=> int mod;

    for (0 => int beat; beat < kick_hits.size(); beat++) {
        <<< beat >>>;
        if (kick_hits[beat])
            0 => kick.pos;
        if (snare_hits[beat])
            0 => snare.pos;
        if (cowbell_hits[beat])
            0 => cowbell.pos;
        if (beat % mod ==0)
            0=>click2.pos;
        
        if(Math.random2(0,1))
           0 => hihat.pos;
        if(Math.random2(0,3))
           0 => click.pos;
        if(!Math.random2(0,4)){
            
            Std.mtof(Math.random2(60,72))=>violin.freq;
            0.2=>violin.gain;
        }
        else
            0.0 => violin.gain;
        
        if(!Math.random2(0,3)){
            
            Std.mtof(Math.random2(60,72))=>clarinet.freq;
            0.2=>clarinet.gain;
        }
        else
            0.0 => clarinet.gain;
        
        
        
        TEMPO => now;
    }


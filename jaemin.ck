Hid hi;
HidMsg msg;
0 => int device;
if (! hi.openKeyboard(device)) me.exit();
<<< "keyboard '" + hi.name() + "' ready", "" >>>;

SndBuf snare => dac;
SndBuf hihat1 => dac;
SndBuf hihat3 => dac;
SndBuf kick => dac;


me.dir() + "/audio/snare_01.wav" => snare.read;
me.dir() + "/audio/hihat_01.wav" => hihat1.read;
me.dir() + "/audio/hihat_03.wav" => hihat3.read;
me.dir() + "/audio/kick_01.wav" => kick.read;

snare.samples() => snare.pos;
hihat1.samples() => hihat1.pos;
hihat3.samples() => hihat3.pos;
kick.samples() => kick.pos;


while (true) {
    hi => now;
    while (hi.recv(msg)) {
        if (msg.isButtonDown()) {
            <<< "Button Down:">>>;
            //If you click s, hihat1 sounds
            if(msg.ascii == 83) 
                0 => hihat1.pos;
            //If you click d, hihat3 sounds 
            if(msg.ascii == 68)
                0 => hihat3.pos;
            //If you click n, kick sounds
            if(msg.ascii == 78)
                0 => kick.pos;
            //If you click j, snare sounds
            if(msg.ascii == 74)
                0 => snare.pos;
        }
    }
}
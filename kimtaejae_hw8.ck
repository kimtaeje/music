Hid hi;
HidMsg msg;
0 => int device;
if (! hi.openKeyboard(device)) me.exit();
<<< "keyboard '" + hi.name() + "' ready", "" >>>;



SndBuf kick => dac;
SndBuf click => dac;
SndBuf hihat => dac;
SndBuf snare => dac;
kick.samples() => kick.pos;
click.samples() => click.pos;
hihat.samples() => hihat.pos;
snare.samples() => snare.pos;


me.dir() + "/audio/kick_04.wav" => kick.read;
me.dir() + "/audio/click_02.wav" => click.read;
me.dir() + "/audio/hihat_01.wav" => hihat.read;
me.dir() + "/audio/snare_01.wav" => snare.read;






while (true) {
    hi => now;
    while (hi.recv(msg)) {
        if (msg.isButtonDown()) {
            <<< "Button Down:">>>;
            //TYPE E, KICK 
            if(msg.ascii == 69) 
                0 => kick.pos;
            //TYPE A, CLICK 
            if(msg.ascii == 62)
                0 => click.pos;
            //TYPE S, HIHAT
            if(msg.ascii == 64)
                0 => hihat.pos;
            //TYPE D, SNARE
            if(msg.ascii == 65)
                0 => snare.pos;
        }
    }
}
Hid hi;
HidMsg msg;
0 => int device;
if (! hi.openMouse(device)) me.exit();
<<< "mouse '" + hi.name() + "' ready", "" >>>;

SndBuf snare => dac;
me.dir() + "/audio/snare_01.wav" => snare.read;
snare.samples() => snare.pos;
while (true) {
    hi => now;
    while (hi.recv(msg)) {
        if (msg.isButtonDown()) {
            <<< "Button down" >>>;
            0 => snare.pos;
        }
      
        
    }
}
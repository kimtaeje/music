Hid hi;

HidMsg msg;

2 => int device;

if (! hi.openKeyboard(device)) me.exit();

<<< "keyboard '" + hi.name() + "' ready", "" >>>;



SndBuf snare1 => dac;
SndBuf snare3 => dac;

SndBuf hihat2 => dac;
SndBuf hihat3 => dac;

SndBuf kick1 => dac;
SndBuf kick2 => dac;

SndBuf cowbell => dac;




me.dir() + "/audio/snare_01.wav" => snare1.read;
me.dir() + "/audio/snare_03.wav" => snare3.read;

me.dir() + "/audio/hihat_02.wav" => hihat2.read;
me.dir() + "/audio/hihat_03.wav" => hihat3.read;

me.dir() + "/audio/kick_01.wav" => kick1.read;
me.dir() + "/audio/kick_02.wav" => kick2.read;

me.dir() + "/audio/cowbell_01.wav" => cowbell.read;


snare1.samples() => snare1.pos;
snare3.samples() => snare3.pos;

hihat2.samples() => hihat2.pos;
hihat3.samples() => hihat3.pos;

kick1.samples() => kick1.pos;
kick2.samples() => kick2.pos;

cowbell.samples() => cowbell.pos;





while (true) {
    
    hi => now;
    
    while (hi.recv(msg)) {
        
        if (msg.isButtonDown()) {
            
            <<< "Button Down:", msg.ascii>>>;
            
            //ButtonDown 'a' => snare1 sounds
            if(msg.ascii == 65)
                0 => snare1.pos;
            ///ButtonDown 's' => snare3 sounds
            if(msg.ascii == 83){
                0.7 => snare3.gain;
                0 => snare3.pos;
            }
            //ButtonDown 'd' => hihat2 sounds
            
            if(msg.ascii == 68) {
                0.2 => hihat2.gain;
                0 => hihat2.pos; 
            }
            //ButtonDown 'j' => hihat3 sounds 
            
            if(msg.ascii == 74){
                0.7=> hihat3.gain;
                0 => hihat3.pos;
            }
            //ButtonDown 'k' => kick sounds
            
            if(msg.ascii == 75){
                0.4=> kick1.gain;
                0 => kick1.pos;
            }
            //ButtonDown 'l' => kick2 sounds
            if(msg.ascii == 76)
                0 => kick2.pos;
            //ButtonDown 'spacebar' => cowbell sounds
            if(msg.ascii == 32)
                0 => cowbell.pos;
            
        }
        
    }
    
}
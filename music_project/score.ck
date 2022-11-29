BPM t;
t.tempo(100);

Machine.add(me.dir() + "drum.ck") => int drumID;
Machine.add(me.dir() + "melody_Attention.ck");
Machine.add(me.dir() + "base_Attetion.ck");
t.wn * 24 + t.qn => now;
Machine.add(me.dir() + "melody_HypeBoy.ck");
Machine.add(me.dir() + "base_HypeBoy.ck");
t.wn * 16 + t.qn => now;
Machine.add(me.dir() + "melody_Antifragile.ck");
Machine.add(me.dir() + "base_Antifragile.ck");
t.wn * 24 + t.qn => now;
Machine.remove(drumID);


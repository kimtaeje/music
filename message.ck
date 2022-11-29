OscOut oout;
2022 => int port;
oout.dest("localhost", port);
oout.start("/bass/play").add(60).add(0.9).add("C4").send();
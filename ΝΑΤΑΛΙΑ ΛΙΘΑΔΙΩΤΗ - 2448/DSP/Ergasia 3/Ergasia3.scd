s.boot;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Sound 1~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

s.boot;
(
SynthDef(\sound1, {| freq = 2000, amp = 0.4, delaytime = 0.5, decaytime = 0.5|
	var sig, comb, env;
	env = XLine.kr(9, 0, 4, doneAction:2);
	sig = SinOsc.ar(freq, 0, amp) * env;
	comb = CombL.ar(sig, delaytime, decaytime, 4);
	Out.ar([0,1], comb);
}).play;
)


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Sound 2~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

(
SynthDef(\sound2, {|freq = 1000, amp = 0.025, delaytime = 0.1, decaytime = 0.05|
	var sig, comb, env;
	env = Line.kr(10, 0, 1, doneAction:2);
	sig = Blip.ar(freq, 50) * env;
	comb = CombN.ar(sig, delaytime, decaytime, -20);
	Out.ar([0,1], comb);
}).play;
)


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Sound 3~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

(
SynthDef(\sound3, {|delaytime = 0.3, decaytime = 0.3|
	var sig, comb;
	sig = Decay.ar(Dust2.ar(1,0.5), 0.2, WhiteNoise.ar);
	comb = CombC.ar(sig, delaytime, decaytime, 3);
	Out.ar([0,1], comb);
}).play;
)












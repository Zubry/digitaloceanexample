import java.awt.Graphics2D;

import org.osbot.rs07.script.Script;
import org.osbot.rs07.script.ScriptManifest;

@ScriptManifest(name="SampleScript", author="Sample", version=1.0, info="", logo="")
public class SampleScript extends Script {
	@Override
	public void onStart() {
		System.out.println("Starting...");
	}

	@Override
	public int onLoop() throws InterruptedException {
		log("Looping...");
		return 1000;
	}

	@Override
	public void onExit() {
		log("Exiting...");
	}

	@Override
	public void onPaint(Graphics2D g) {

	}
}

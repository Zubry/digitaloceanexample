import org.dreambot.api.script.AbstractScript;
import org.dreambot.api.script.Category;
import org.dreambot.api.script.ScriptManifest;
import org.dreambot.api.script.MethodProvider;

@ScriptManifest(name = "Script Name", description = "My script description!", author = "Developer Name",
                version = 1.0, category = Category.WOODCUTTING, image = "")
public class SampleScript extends AbstractScript {
    @Override
    public int onLoop() {
        MethodProvider.log("My first script!");
        return 1000;
    }
}



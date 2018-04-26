public class View {
    Model model;

    public View(Model m) {
        model = m;
//        ellipseMode(CORNER);
    }

    public void draw() {
        stroke(0);

        float xstep = (float)width  / model.getSpaceWidth();
        float ystep = (float)height / model.getSpaceHeight();
        for( int i = 0 ; i < model.getPopulationSize() ; i++ ) {
            Agent agent = model.getAgentAtIndex(i);
            int x = agent.getLocation().getX();
            int y = agent.getLocation().getY();
            if( agent.getType() == AgentType.Blue ) {
                fill(0, 0, 255);
            } else {
                fill(255, 0, 0);
            }
            ellipse(x * xstep + xstep / 2, y * ystep + ystep / 2,
                    xstep, ystep);
        }
/**
        for( int x = 0 ; x < model.getSpaceWidth() ; x++ ) {
            for( int y = 0 ; y < model.getSpaceHeight() ; y++ ) {
                Agent agent = model.getAgentAtPosition(x, y);
                if( agent == null ) {
                    // do nothing
//                    fill(0);
                } else if( agent.getType() == AgentType.Blue ) {
                    fill(0, 0, 255);
                } else {
                    fill(255, 0, 0);
                }
                rect(x * xstep, y * ystep, xstep, ystep);
            }
        }
**/
    }
}

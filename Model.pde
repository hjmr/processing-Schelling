public class Model {
	private GridSpace space;
	private Population pop;

	public Model(GridSpace s, Population p) {
		space = s;
		pop   = p;
	}
	
	public void randomizeSpace() {
		for( int i = 0 ; i < pop.getSize() ; i++ ) {
            Agent a = pop.getAgentAtIndex(i);
			boolean set = false;
			while( !set ) {
				int x = (int)(random( space.getWidth()));
			    int y = (int)(random(space.getHeight()));
				Cell c = space.getCellAt(x, y);
				if( c.getAgent() == null ) {
					c.setAgent(a);
					a.setLocation(c);
					set = true;
				}
			}
		}
	}
	
	public void update() {
		pop.update();
	}
	
	public int getSpaceWidth() {
		return space.getWidth();
	}
	
	public int getSpaceHeight() {
		return space.getHeight();
	}
	
	public Agent getAgentAtPosition(int x, int y) {
		return space.getCellAt(x, y).getAgent();
	}

    public int getPopulationSize() {
        return pop.getSize();
    }

    public Agent getAgentAtIndex(int i) {
        return pop.getAgentAtIndex(i);
    }
}

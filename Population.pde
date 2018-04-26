public class Population {
	ArrayList pop;
	
	public Population(int redNum, int redReq, int blueNum, int blueReq) {
		pop = new ArrayList();
		for( int i = 0 ; i < redNum ; i++ ) {
			pop.add(new Agent(AgentType.Red, redReq));
		}

		for( int i = 0 ; i < blueNum ; i++ ) {
			pop.add(new Agent(AgentType.Blue, blueReq));
		}
	}

	public int getSize() {
		return pop.size();
	}

    public Agent getAgentAtIndex(int i) {
        return (Agent)pop.get(i);
    }
	
	public void update() {
        for( int i = 0 ; i < pop.size() ; i++ ) {
            Agent a = (Agent)pop.get(i);
			a.update();
		}
	}
}

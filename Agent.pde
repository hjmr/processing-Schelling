public class Agent {
    int type;
    int requirement;
    Cell location;

    public Agent(int t, int r) {
        type = t;
        requirement = r;
    }
    public void setLocation(Cell c) {
        location = c;
    }

    public Cell getLocation() {
        return location;
    }

    public int getType() {
        return type;
    }

    public void update() {
        if( location != null ) {
            int cnt = 0;
            for( int i = 0 ; i < location.getNeighborSize() ; i++ ) {
                Cell c = location.getNeighborAtIndex(i);
                Agent a = c.getAgent();
                if( a != null && a.getType() == type ) {
                    cnt++;
                }
            }
            if( cnt < requirement ) {
                move();
            }
        }
    }

    private void move() {
        if( location != null ) {
            ArrayList empty = new ArrayList();
            for( int i = 0 ; i < location.getNeighborSize() ; i++ ) {
                Cell c = location.getNeighborAtIndex(i);
                if( c.getAgent() == null ) {
                    empty.add(c);
                }
            }

            if( 0 < empty.size() ) {
                int p = (int)(random(empty.size()));
                location.setAgent(null);
                location = (Cell)empty.get(p);
                location.setAgent(this);
            }
        }
    }
}
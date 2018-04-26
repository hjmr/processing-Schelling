public class Cell {
    private int pos_x, pos_y;
    private Agent agent;
    private ArrayList neighbor;

    public Cell(int x, int y) {
        pos_x = x;
        pos_y = y;

        agent = null;
        neighbor = new ArrayList();
    }

    public void setAgent(Agent a) {
        agent = a;
    }

    public Agent getAgent() {
        return agent;
    }

    public void addNeighbor(Cell c) {
        neighbor.add(c);
    }

    public int getNeighborSize() {
        return neighbor.size();
    }
    
    public Cell getNeighborAtIndex(int i) {
        return (Cell)neighbor.get(i);
    }

    public int getX() {
        return pos_x;
    }

    public int getY() {
        return pos_y;
    }
}

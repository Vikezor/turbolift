import {Floorplan} from './floorplan.js';

export class Building {
    constructor() {
        this.floors = [new Floorplan()];
    }

    clear() {
        this.floors = this.floors.slice(0,1);
        this.floors[0].reset();
    }

    addFloor(index = this.floors.length) {
        this.floors.splice(index, 0, new Floorplan());
    }
}

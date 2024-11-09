import {Floorplan} from './floorplan.js';

export class Building {
    constructor() {
        this.floors = [new Floorplan()];
    }

    clear() {
        this.floors = this.floors.slice(0,1);
        this.floors[0].clear();
    }
}

//There is a retail shop which need to manage the inventory,
// whenever some purchase is being made product quantity should be reduced,
// if quanity is less than 5 reorder request should be raised.
//Design an interface and classes for the same.


interface Inventory {
    buy( quantity : number ) : void;
}
class RetailInventory implements Inventory {
    //stock = total available units
    private Stock: number;
    constructor(quantity : number) {
        this.Stock = quantity;
        if(this.Stock < 5) {
           this.reOrder(50);
        }
    }
    buy(quantity: number): void {
        if(quantity > this.Stock){
            console.log(`We can't accept your order`);
            if(quantity > 100){
                this.reOrder(quantity);
            }
            else {
                this.reOrder(100);
            }
            return;
        }
        this.Stock  = this.Stock - quantity;
        console.log(`Buy of ${quantity} units`);
        if(this.Stock < 5) {
            this.reOrder(100);
        }
    }
    private reOrder(quantity: number): void {
        //process of Reordering
        console.log(`Reorder of  ${quantity} units placed`);
        //after Reordering
        this.Stock += quantity;//stock is equal to or more than quantity
        console.log(`Inventory = ${this.Stock}`);
    }
}
var retailShop = new RetailInventory(100);

retailShop.buy(70);
retailShop.buy(70);//we can't accept yoy order
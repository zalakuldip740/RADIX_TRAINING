
//Rambo Rental Bikes is looking for developing a system to calculate
// the rentals of the bikes. System should accept the customer details,
// bike details and calculate the rental charges. DESCRIPTION OF PROJECTS 
//System allows users to add customer details with bike rented. 
//It computes rent for each customer. Systems displays the Bike details
// with summation of days of hire and rental payment. 
 // FUNCTIONALITY AND TASKDefine a class called Mobike with the following 
//description: Instance variables/data members: BikeNumber – to store the
// bike’s numberPhoneNumber – to store the phone number of the customerName – to store the name of the customer
//Days – to store the number of days the bike is taken on rent o
// charge – to calculate and store the rental chargeMember 
//methods:void Compute( )– to compute the rental chargeBike No.
//         PhoneNo             No. of days         Charge The rent for
// a mobike is charged on the following basis:First five days Rs 500 per
// dayNext five days Rs 400 per dayRest of the days Rs 200 per dayNote use
// get this Data @param ES6 class  Exports BikeNo,Phone,Noofdays and Charge.


class Bikerent {
    constructor(bno, phno, name, day) {
    this.bno = bno;
    this.phno = phno;
    this.name = name;
    this.day = day;
    console.log('Customer Name ' + name, ', Bike no. ' + bno, ', Phone no.' + phno, ', Total days ' + day); }
    compute() {
    var charge;
    if (this.day <= 5) {
    charge = this.day * 500;
    } else if (this.day <= 10) {
    charge = 500 * 5 + (this.day - 5) * 400;
    } else if (this.day > 10) {
    charge = 500 * 5 + 400 * 5 + (this.day - 10) * 200;
    }
    console.log('Total charge is : ' + charge)
    }}
    console.log('Details');
    const customer1 = new Bikerent('xyz123', 9999999999, 'Kuldip', 10);
    const customer2 = new Bikerent('xyz1355', 9999999999, 'xyz', 36);
    customer1.compute();
    customer2.compute();
    
    
// 1. Set
var studentName = new Set();
studentName.add("Rutvik");
studentName.add("Kamal");
studentName.add("Krupal");
studentName.add("Chhaya");
console.log(studentName);
console.log(studentName.has("Rajesh"));
console.log(studentName.has(10));
console.log(studentName.size);
console.log(studentName["delete"]("Chhaya"));
console.log(studentName.clear());
console.log(studentName);
// 2. Map
var studentStandardMapping = new Map();
studentStandardMapping.set("Rutvik", 2);
studentStandardMapping.set("Raj", 12);
studentStandardMapping.set("Mahesh", 11);
for (var _i = 0, _a = studentStandardMapping.keys(); _i < _a.length; _i++) {
    var key = _a[_i];
    console.log("Map keys : " + key);
}
for (var _b = 0, _c = studentStandardMapping.values(); _b < _c.length; _b++) {
    var value = _c[_b];
    console.log("Map values : " + value);
}
for (var _d = 0, _e = studentStandardMapping.entries(); _d < _e.length; _d++) {
    var entry = _e[_d];
    console.log(entry[0], entry[1]);
}
// 3. Date
var date = new Date();
console.log("Date : " + date);
date = new Date(500000000);
console.log("Date : " + date);
date = new Date("2021-11-06");
console.log("Date : " + date);
date = new Date(2021, 5, 5, 17, 32, 45, 11);
console.log("Date : " + date);
date.setDate(11);
date.setMonth(12);
date.setFullYear(2022);
date.setHours(12);
date.setMinutes(56);
date.setMilliseconds(20);
console.log("Date :" + date.getDate());
console.log("Month :" + date.getMonth());
console.log("Year :" + date.getFullYear());
console.log("Hour :" + date.getHours());
console.log("Minute :" + date.getMinutes());
console.log("Millisecond :" + date.getMilliseconds());

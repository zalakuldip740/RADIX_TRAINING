//University of Mumbai needs to set an online exam for their students.
// For that they need to set a timer for three hours. After 3 hours 
//exams should be finished.

//Note: Use promises and callbacks

//Once Exam is started start event should be invoke and When we
// end the exam end event should be call.


const EventEmitter = require("events")
const eventEmitter = new EventEmitter()

const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
})

var enumber;
var subcode;
var flag;

const question1 = () => {
    return new Promise((resolve, reject) => {
        readline.question('Enter your Enrollment Number : ', data => { enumber = data; resolve() })
    })
}

const question2 = () => {
    return new Promise((resolve, reject) => {
        readline.question('enter subject code : ', data => { subcode = data; resolve() })
    })
}

const question3 = () => {
    return new Promise((resolve, reject) => {
        readline.question('Do you want to start Exam ? ', data => { flag = data; resolve() })
    })
}

eventEmitter.on('start', () => {
    setTimeout(() => {
        readline.close()
        console.log("timeout");
    }, 3000);
})

const main = async () => {
    await question1()
    await question2()
    console.log(`Enrollment number is : ${enumber} and subject code is : ${subcode}`);
    await question3()
    eventEmitter.emit('start')

}

main()

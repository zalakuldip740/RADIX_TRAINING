const EventEmitter = require('events')
const eventEmitter = new EventEmitter()
eventEmitter.on('start', () => {
    console.log('started')
  })
  
  eventEmitter.emit('start')

  eventEmitter.on('printnum', number => {
    console.log(`number is ${number}`)
  })
  

  eventEmitter.emit('printnum', 23)

  eventEmitter.on('sum', (num1, num2) => {
    console.log(`sum is ${num1+num2}`)
  })
  
  eventEmitter.emit('sum', 78, 52)
  

const fetch = require('node-fetch')

let count = 1;

const wakeUp = async () => {
    const result = await fetch('https://googlecloudreadyspeedrun2020.herokuapp.com/lab4/index.js')
    console.log({ result, count })
    count++
}

wakeUp()

setInterval(() => { wakeUp() }, 1000 * 60 * 10)
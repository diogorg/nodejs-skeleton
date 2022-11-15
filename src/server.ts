import { app } from './app'

const port = 3001

const server = app.listen(port, () => console.log(`Listen: ${port}`))

process.on('SIGINT', () => {
  server.close()
  console.log('The End')
})

import bodyParser from 'body-parser'
import cors from 'cors'
import express from 'express'
import morgan from 'morgan'
import { userRoutes } from './routes/users'

export const app = express()
app.use(cors())
app.use(bodyParser.json())
app.use(morgan('dev'))
app.use('/users', userRoutes)
app.use('/', (req, res) => res.send('API'))

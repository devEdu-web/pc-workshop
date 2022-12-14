import express, { Application } from 'express'

class App {
  readonly express: Application

  constructor() {
    this.express = express()
    this.middlewares()
    this.routes()
  }

  private middlewares() {
    this.express.use(express.json())
    this.express.use(express.urlencoded({ extended: true }))
  }

  private routes() {}
}

export default new App().express
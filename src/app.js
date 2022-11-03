import express from "express";
import indexRoutes from './routes/index.routes.js'
import articleRoutes from './routes/article.routes.js'

const app = express();

app.use(express.json())
app.use(indexRoutes)
app.use(articleRoutes)

export default app;
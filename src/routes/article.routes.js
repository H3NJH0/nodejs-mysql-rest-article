import { Router } from 'express'
import { getArticles,getArticle,createArticle,updateArticle, deleteArticle } from '../controller/article.controller.js'
const router = Router()
export default router

router.get('/article', getArticles)

router.get('/article/:id', getArticle)

router.post('/article',createArticle)

router.patch('/article/:id',updateArticle)

router.delete('/article/:id',deleteArticle)
